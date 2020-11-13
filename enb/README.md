# oai_enb
```bash=
docker build -t enb_test:1 .

#docker run -it --privileged --rm --name="oai_enb" -v /dev/bus/usb:/dev/bus/usb -v /lib/modules:/lib/modules enb_test:1
#docker run -it --privileged --rm --name="oai_enb" -v /dev/bus/usb:/dev/bus/usb enb_test:1 

docker run -it --privileged --rm --name="oai_enb" --cap-add=ALL -v /dev:/dev -v /usr/src:/usr/src -v /dev/bus/usb:/dev/bus/usb -v /lib/modules:/lib/modules
enb_test:1

$ cd /usr/src
$ sudo apt-get install linux-headers-4.18.0-17-generic

# Download and patch EPC
$ cd ~
$ wget https://raw.githubusercontent.com/cly1213/oai/master/opencells-mods-20190923.tgz
$ tar xf opencells-mods-20190923.tgz

$ wget https://raw.githubusercontent.com/cly1213/oai/master/openair-cn.tgz
$ tar xf openair-cn.tgz

$ cd openair-cn
$ git checkout -b 724542d0b59797b010af8c5df15af7f669c1e838
$ git checkout develop
$ git apply ~/opencells-mods/EPC.patch
$ cd ~
$ cd openairinterface5g/cmake_targets
$ sudo ./build_oai -I
$ sudo ./build_oai -w USRP --eNB --UE

$ cd ~/openairinterface5g/cmake_targets/lte_build_oai/build
$ cp lte-softmodem ~

# Verify that USRP is working
$ uhd_find_devices
$ uhd_usrp_probe
```
