import pigpio as GPIO

# pin led 21

pi=GPIO.pi()

pi.set_mode(21,GPIO.OUTPUT)
pi.write(21,1)
print("toto")
