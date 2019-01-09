import distance as dist
import getADC as ADC
import temperature as tempe
import pompe as pompe
import time
import watreeserver as serv

PLEIN = 5
VIDE = 25
DELAY= 60 # delai entre deux loop en secondes

def init():
    dist.init_distance()
    pompe.init_pompe()


def arrosage():
    it = 0
    while True:

        # lumière
        lumi_tab = [0] * 24
        lumi_tab[h] = ADC.getADC(3)
        lumi_mean = lumi_moyenne(lumi_tab)
        # send mean to server
        serv.put_luminosite(lumi_mean)

        # temperature
        temperature = tempe.read_temperature()
        # send temp to server
        serv.put_temperature(temperature)

        # niveau d'eau
        niveau = remplissage_cuve()


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

            # comparaison
            for x in range(3):
                if ((moisture[x] - needs[x]) < -5):
                    pompe.gestion_pompe(x, True)
                    time.sleep(2)
                    pompe.gestion_pompe(x, False)

            # fin while
        it = (it + 1) % 24
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


def remplissage_cuve():
    profondeur = dist.distance()
    remplis = ((VIDE - profondeur) / (VIDE - PLEIN)) * 100
    # remplis = -5 * profondeur + 125
    return remplis
