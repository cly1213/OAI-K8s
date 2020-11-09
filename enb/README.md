# oai_enb
```bash=
docker build -t enb_test:1 .
docker run -it --privileged --rm --name="oai5g_enb" -v /dev/bus/usb:/dev/bus/usb -v /lib/modules:/lib/modules enb_test:1

$ cd openairinterface5g/cmake_targets
$ ./build_oai -I
$ ./build_oai -w USRP --eNB --UE

#Verify that USRP is working
$ uhd_find_devices
$ uhd_usrp_probe
```
