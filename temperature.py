# Import Libraries
import os
import glob
import time

# Finds the correct temperature file that holds the temperature data
base_dir = '/sys/bus/w1/devices/'
temperature_folder = glob.glob(base_dir + '28*')[0]
temperature_file = temperature_folder + '/w1_slave'


# A function that reads the sensors data
def read_temp_raw():
    f = open(temperature_file, 'r')  # open the file
    lines = f.readlines()  # return the file data
    f.close()
    return lines


# Convert the value of the sensor into a  celsius temperature
def read_temperature():
    lines = read_temp_raw()
    # While the first line does not contain 'YES', wait for 0.2s
    # and then read the device file again.
    while lines[0].strip()[-3:] != 'YES':
        time.sleep(0.2)
        lines = read_temp_raw()

    # Look for the position of the '=' in the second line of the
    # device file.
    equals_pos = lines[1].find('t=')

    # If the '=' is found, convert the rest of the line after the
    # '=' into degrees Celsius
    if equals_pos != -1:
        temp_string = lines[1][equals_pos + 2:]
        temp_c = float(temp_string) / 1000.0
        return temp_c


if (__name__=="__main__"):
    for i in range(1,10):
        print(read_temperature())
