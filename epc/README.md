# EPC
```bash=
docker build -t epc_test:1 .

docker run -it --privileged --name="oai_epc" --cap-add=ALL -v /dev:/dev -v /usr/src:/usr/src -v /dev/bus/usb:/dev/bus/usb -v /lib/modules:/lib/modules epc_test:1
```

```bash=
##Install this configuration for EPC
##For the EPC, we install in OAI default directory: /usr/local/etc/oai

$ mkdir -p /usr/local/etc/oai
$ cp -rp ~/opencells-mods/config_epc/* /usr/local/etc/oai

$ cd openair-cn; source oaienv; cd scripts
$ ./check_hss_s6a_certificate /usr/local/etc/oai/freeDiameter hss.OpenAir5G.Alliance
$ ./check_mme_s6a_certificate /usr/local/etc/oai/freeDiameter mme.OpenAir5G.Alliance

##Install SW for EPC
$ cd openair-cn; source oaienv; cd scripts

$ sudo ./build_hss -i
#Do you want to install freeDiameter 1.2.0 ? <y/N> y

$ sudo ./build_mme -i
#Do you want to install freeDiameter 1.2.0 ? <y/N> n
#Do you want to install asn1c rev 1516 patched? <y/N> y
#Do you want to install libgtpnl ? <y/N> y
#Should non-superusers be able to capture packets? [yes/no] yes
#Configure database for phpmyadmin with dbconfig-common? [yes/no] no
#Web server to reconfigure automatically: 1

$ sudo ./build_spgw -i
#Do you want to install libgtpnl ? <y/N> n

##Compile the EPC
$ sudo ./build_hss
$ sudo ./build_mme
$ sudo ./build_spgw

##To exit out of the container
$ exit
```

```bash=
##Commit changes to image. 
docker commit [containerID] epc_test:2
```
