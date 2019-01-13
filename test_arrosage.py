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

        # lumière

        lumi_tab[it] = ADC.getADC(3)
        lumi_mean = lumi_moyenne(lumi_tab)
        # send mean to server
        serv.put_luminosite(lumi_mean)

        # temperature
        temperature = tempe.read_temperature()
        # send temp to server
        serv.put_temperature(temperature)

        # niveau d'eau
        niveau = dist.remplissage_cuve()


        if (niveau > 0):
            # recup des besoins

            #  TO DO : request serveur
            needs = [0] * 3
            needs[0] = serv.get_humidite(1)
            needs[1] = serv.get_humidite(2)
            needs[2] = serv.get_humidite(3)
            # recup moisture plante
            moisture = [0] * 3
            moisture[0] = ADC.getADC(0)
            moisture[1] = ADC.getADC(1)
            moisture[2] = ADC.getADC(2)

            #ecriture des humidité dans les fichiers
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

        #pause between loop
        time.sleep(DELAY)

def lumi_moyenne(lumi_tab):
    sum = 0
    for i in lumi_tab.size:
        sum += lumi_tab[i]
    mean = sum / lumi_tab.size
    return mean


if __name__=="__main__":
    arrosage_test();
