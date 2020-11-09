# oai_hss

```bash=
docker build -t epc_test:1 .
docker run -it --privileged --rm --name="oai5g_hss" -v /dev/bus/usb:/dev/bus/usb -v /lib/modules:/lib/modules epc_test:1

# Install SW for EPC
$ cd openair-cn; source oaienv; cd scripts
$ ./build_hss -i

# Compile the EPC
$ cd openair-cn; source oaienv; cd scripts
$ ./build_hss

```
