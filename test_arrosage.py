import distance as dist
import getADC as ADC
import temperature as tempe
import pompe as pompe
import time
import watreeserver as serv


DELAY= 1800 # delai entre deux loop en secondes

def init():
    dist.init_distance()
    pompe.init_pompe()


def arrosage_test():
    it = 0
    lumi_tab = [0] * 24
    while True:

        # lumiere

        lumi_tab[it] = ADC.getADC(3)
        lumi_mean = lumi_moyenne(lumi_tab)
        # send mean to server
        serv.put_luminosite(lumi_mean)
	with open("lumi.txt", "a") as file_lumi :
		file_lumi.write(str(lumi_mean)+"\n")
        # temperature
        temperature = tempe.read_temperature()
        # send temp to server
        serv.put_temperature(temperature)
	with open("temperature.txt","a") as file_temp:
		file_temp.write(str(temperature)+"\n")

        # niveau deau
        niveau = dist.remplissage_cuve()


        if (niveau > 0):
            # recup des besoins

            #  TO DO : request serveur
            needs = [0] * 3
            needs[0] = float(serv.get_humidite(1))
            needs[1] = float(serv.get_humidite(2))
            needs[2] = float(serv.get_humidite(3))
            # recup moisture plante
            moisture = [0] * 3
            moisture[0] = ADC.getADC(0)
            moisture[1] = ADC.getADC(1)
            moisture[2] = ADC.getADC(2)

            #ecritCure des humidite dans les fichiers
            with open("plante1.txt", "a")as f1:
                f1.write(str(moisture[0]) + "\n")
            with open("plante2.txt", "a")as f2:
                f2.write(str(moisture[1]) + "\n")
            with open("plante3.txt", "a")as f3:
                f3.write(str(moisture[2]) + "\n")

            # comparaison
            for x in range(3):
                if ((moisture[x] - needs[x]) < -5):
                    pompe.gestion_pompe(x+1, True)
                    time.sleep(2)
                    pompe.gestion_pompe(x+1, False)

        it = (it + 1) % 24
        # niveau d'eau
        niveau = dist.remplissage_cuve()
        # send niveau
        serv.put_niveau_eau(niveau)
	with open ("niveau.txt","a") as file_niveau:
		file_niveau.write(str(niveau)+"\n")

        #pause between loop
        time.sleep(DELAY)

def lumi_moyenne(lumi_tab):
    sum = 0
    for i in (lumi_tab):
        sum += i
    mean = sum / len(lumi_tab)
    return mean


if __name__=="__main__":
    arrosage_test();
