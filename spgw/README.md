# oai_spgw

```bash=
docker build -t enb_test:1 .
docker run -it --privileged --rm --name="oai5g_spgw" -v /dev/bus/usb:/dev/bus/usb -v /lib/modules:/lib/modules spgw_test:1

# Install SW for EPC
$ cd openair-cn; source oaienv; cd scripts
$ ./build_spgw -i

# Compile the EPC
$ cd openair-cn; source oaienv; cd scripts
$ ./build_spgw

```

