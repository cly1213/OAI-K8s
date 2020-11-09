# oai_mme

```bash=
docker build -t epc_test:1 .
docker run -it --privileged --rm --name="oai_mme" -v /dev/bus/usb:/dev/bus/usb -v /lib/modules:/lib/modules epc_test:1

# Install this configuration for EPC
# For the EPC, we install in OAI default directory: /usr/local/etc/oai

$ mkdir -p /usr/local/etc/oai
$ cp -rp ~/opencells-mods/config_epc/* /usr/local/etc/oai

$ cd openair-cn; source oaienv; cd scripts
$ ./check_mme_s6a_certificate /usr/local/etc/oai/freeDiameter mme.OpenAir5G.Alliance

# Install SW for EPC
$ cd openair-cn; source oaienv; cd scripts
$ ./build_mme -i

# Compile the EPC
$ cd openair-cn; source oaienv; cd scripts
$ ./build_mme

```
