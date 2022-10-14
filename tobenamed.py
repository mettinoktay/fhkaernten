from sense_hat import SenseHat

sense = SenseHat()

sense.show_message("Humidityis: %" + str(round(sense.get_humidity(), 2)))
sense.show_message("The attitude is: " + str(round(sense.get_gyro_x(), 2)))
