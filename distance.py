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
    pi.write(PIN_TRIG,True)
    time.sleep(0.00001)
    pi.write(PIN_TRIG,False)
    started =time.time()
    stop = -1
    print(pi.read(PIN_ECHO))
    while ( pi.read(PIN_ECHO)==0):
        start=time.time()
        if (start-started)>15:
            print("abort")
            return -1
    print(pi.read(PIN_ECHO))	
    while ( pi.read(PIN_ECHO)==1):
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