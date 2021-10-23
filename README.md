# FPGA Installation On Termux Ubuntu
### Login into Ubuntu
```
proot-distro login ubuntu
```
## Update & Upgrade Ubuntu And Download Mandatory Packages
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/imp/vaman1.sh
chmod +x vaman1.sh
./vaman1.sh
```
## Cloning The pygmy-dev in Home of Termux
```
cd /data/data/com.termux/files/home/
git clone --recursive https://github.com/optimuslogic/pygmy-dev
```
## Create Directory For Building the Toolchain
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/imp/vaman2.sh
chmod +x vaman2.sh
./vaman2.sh
```

## Install fasm
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/imp/vaman3.sh
chmod +x vaman3.sh
./vaman3.sh
```
## Install yosys
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/imp/vaman4.sh
chmod +x vaman4.sh
./vaman4.sh
```
## Install yosys-symbiflow
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/imp/vaman5.sh
chmod +x vaman5.sh
./vaman5.sh
```
## Install vtr
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/imp/vaman6.sh
chmod +x vaman6.sh
./vaman6.sh
```
## Add Path to .bashrc
```
nano ~/.bashrc
```
##### Paste the following 3 lines at the end of the file
* export  INSTALL_DIR=/data/data/com.termux/files/home/symbiflow
* export PATH="$INSTALL_DIR/quicklogic-arch-defs/bin:$INSTALL_DIR/quicklogic-arch-defs/bin/python3:$PATH"
* export PATH=/data/data/com.termux/files/home/symbiflow/bin:$PATH
##### After Edit The File Just Save And Exit
```
Ctrl+x
Y 
```
```
cd /data/data/com.termux/files/home/
```
##### Just Restart The Termux Onces

## Check the executables on Path
```
vpr -h
yosys -h
qlfasm -h
ql_symbiflow -h
```
### Test Installation
```
cd $INSTALL_DIR/quicklogic-arch-defs/tests/counter_16bit
ql_symbiflow -compile -d ql-eos-s3 -P pd64 -v counter_16bit.v -t top -p chandalar.pcf -dump binary
```
##### top.bin must be generated successfully 
## Making Directory & Downloading Blinking Light Project For vaman
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/imp/vaman7.sh
chmod +x vaman7.sh
./vaman7.sh
```
### Compling The Blinking Light Program
```
ql_symbiflow -compile -src /data/data/com.termux/files/home/fpga-examples/blink -d ql-eos-s3 -P PU64 -v helloworldfpga.v -t helloworldfpga -p quickfeather.pcf -dump binary
```
* helloworldfpga.bin must be generated successfully in /data/data/com.termux/files/home/fpga-examples/blink
### Transfer .bin file to RaspberryPi
```
scp /data/data/com.termux/files/home/fpga-examples/blink/helloworldfpga.bin pi@192.168.1.6:/home/pi/
```
* Suitably Modify the above IPAddress
## On Your RaspberryPi
##### Cloning TinyFPGA-Programmer-Application.git & Installing Modules
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/imp/vaman8.sh
chmod +x vaman8.sh
./vaman8.sh
```
## Reboot The RasberryPi
```
sudo reboot
```
### Installing into Vaman
```
python3 /home/pi/TinyFPGA-Programmer-Application/tinyfpga-programmer-gui.py --port /dev/ttyACM0 --appfpga /home/pi/helloworldfpga.bin --mode fpga

```


