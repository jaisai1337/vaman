# Vaman Installation On Termux Ubuntu
### Login into Ubuntu
```
proot-distro login ubuntu
```
## Update & Upgrade Ubuntu And Download Mandatory Packages
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/vaman1.sh
chmod +x vaman1.sh
./vaman1.sh
```
## Cloning The pygmy-dev in Home of Termux
```
cd /data/data/com/termux/files/home/
git clone --recursive https://github.com/optimuslogic/pygmy-dev
```
## Create Directory For Building the Toolchain
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/vaman2.sh
chmod +x vaman2.sh
./vaman2.sh
```

## Install fasm
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/vaman3.sh
chmod +x vaman3.sh
./vaman3.sh
```
## Install yosys
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/vaman4.sh
chmod +x vaman4.sh
./vaman4.sh
```
## Install yosys-symbiflow
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/vaman5.sh
chmod +x vaman5.sh
./vaman5.sh
```
## Install vtr
```
wget https://raw.githubusercontent.com/jaisai1337/vaman/main/vaman6.sh
chmod +x vaman6.sh
./vaman6.sh
```

