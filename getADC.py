################# 
# Get ADC Value function 
# For MCP 3008 Chip, including 0-7 channels 
# CH 0,1,2 ARE HUMIDITY PINS, CH 3 IS THE LIGHT PIN
# Moisture sensor calibration 850 = 0rh 400 = 100 rh 
#################
#from dis import _get_name_info


def getADC(channel):
    import time
    import Adafruit_GPIO.SPI as SPI
    import Adafruit_MCP3008

    # Hardware SPI configuration:
    SPI_PORT = 0
    SPI_DEVICE = 0
    mcp = Adafruit_MCP3008.MCP3008(spi=SPI.SpiDev(SPI_PORT,
                                                  SPI_DEVICE))

    # Read all the ADC channel values in a list.
    values = [0] * 8

    for i in range(8):
        # The read_adc function will get the value of the
        #  specified channel (0-7).
        values[i] = mcp.read_adc(i)

        # LECTURE HUMIDITY

        if i == 0 or i==1 or i==2:
            values[i] = ((((1.0 / values[i]) * 400.0) - 0.5)
                        * 200.0)

        # LECTURE LIGHT

        if i == 3:
            values[3] = (values[3] / 1023.0) * 100.0

    return values[channel]


# Print the ADC values.
if __name__ =="__main__":
    while True:
        import time

        for i in range(8):
            print("Value of the channel %s is = %f" % (i, getADC(i)))
        time.sleep(0.5)
