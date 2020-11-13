# oai_mme

```bash=
docker build -t mme_test:1 .
docker run -it --privileged --rm --name="oai_mme" -v /dev/bus/usb:/dev/bus/usb -v /lib/modules:/lib/modules mme_test:1

$ cd openair-cn; source oaienv; cd scripts
$ ./check_mme_s6a_certificate /usr/local/etc/oai/freeDiameter mme.OpenAir5G.Alliance

# Install SW for EPC
$ ./build_mme -i

# Should non-superusers be able to capture packets? [yes/no] =>yes
# Configure database for phpmyadmin with dbconfig-common? [yes/no] =>yes
# MySQL application password for phpmyadmin: => enter
# Web server to reconfigure automatically: => 1
# Next step for database installation: => 4

# Compile the EPC
$ ./build_mme

$ cp run_mme ~
$ cd ~
```
