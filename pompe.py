import pigpio as GPIO

PIN_POMPE_1 = 20
PIN_POMPE_2 = 21
PIN_POMPE_3 = 22

pi = GPIO.pi()


def init_pompe():

    pi.set_mode(PIN_POMPE_1, GPIO.OUTPUT)
    pi.set_mode(PIN_POMPE_2, GPIO.OUTPUT)
    pi.set_mode(PIN_POMPE_3, GPIO.OUTPUT)


def gestion_pompe(x, mode):
    if (x == 1):
        tmp = PIN_POMPE_1
    elif (x == 2):
        tmp = PIN_POMPE_2
    elif (x == 3):
        tmp = PIN_POMPE_3
    else:
        print("error")
        return
    pi.write(tmp, mode)
    return 0