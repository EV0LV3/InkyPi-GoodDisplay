
# WIP

###

# Parts
### 10.2-Inch Large Four-Color E Ink Display
https://www.good-display.com/product/531.html
### Universal e-Paper Raw Panel Driver HAT
https://www.waveshare.com/e-paper-driver-hat.htm
### Raspberry Pi Zero 2 W
https://www.raspberrypi.com/products/raspberry-pi-zero-2-w/

# Install

1. Follow step 1 and 2 form: https://github.com/fatihak/InkyPi/tree/main
2. Download the `patch.sh` in the root of InkyPi
```shell
wget https://raw.githubusercontent.com/EV0LV3/InkyPi-GoodDisplay/refs/heads/main/patch.sh
```
3. Apply the patch
```shell
./patch.sh apply
```
4. Install InkyPi with the right driver
```shell
sudo bash install/install.sh -W epd10in2g
```
5. Have fun

# Revert the old install file back
After you have install the screen driver you can revert back to the original install file.
```shell
./patch.sh revert
```
