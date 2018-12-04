import pigpio as GPIO
import time
PIN_TRIG = 20
PIN_ECHO = 21

def init_distance():
    pi = GPIO.pi()
    pi.set_mode( PIN_ECHO, GPIO.INPUT)
    pi.set_mode( PIN_TRIG, GPIO.OUTPUT)
    pi.write(PIN_TRIG,False)
    time.sleep(0.5)


def distance () :
    pi=GPIO.pi()
    # pulse sur la pin echo
    pi.write(PIN_ECHO,True)
    time.sleep(0.00001)
    pi.write(PIN_ECHO,False)
    start =time.time()
    stop = -1
    while ( pi.read(PIN_ECHO)==False):
        start=time.time()
    while ( pi.read(PIN_ECHO)==True):
        stop=time.time()
    if stop == -1 :
        print ("Erreur")
        return -1
    else :
        delai=stop-start
        distance= delai*34000/2 # vitesse son / 2 fois distance
        print("Distance : ",distance)
        return distance


if __name__=='__main__':
    init_distance()
    x=distance()
