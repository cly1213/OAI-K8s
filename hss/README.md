# oai_hss

```bash=
docker build -t epc_test:1 .
docker run -it --privileged --rm --name="oai_hss" -v /dev/bus/usb:/dev/bus/usb -v /lib/modules:/lib/modules epc_test:1

# Install this configuration for EPC
# For the EPC, we install in OAI default directory: /usr/local/etc/oai

$ mkdir -p /usr/local/etc/oai
$ cp -rp ~/opencells-mods/config_epc/* /usr/local/etc/oai

$ cd openair-cn; source oaienv; cd scripts
$ ./check_hss_s6a_certificate /usr/local/etc/oai/freeDiameter hss.OpenAir5G.Alliance

# Install SW for EPC
$ cd openair-cn; source oaienv; cd scripts
$ ./build_hss -i

# Compile the EPC
$ cd openair-cn; source oaienv; cd scripts
$ ./build_hss

```
