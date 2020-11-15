# oai_spgw
```bash=
docker run -it --privileged --rm --network oai-network --name="spgw" --cap-add=ALL -v /dev:/dev -v /usr/src:/usr/src -v /dev/bus/usb:/dev/bus/usb -v /lib/modules:/lib/modules spgw_test:1

sudo apt-get install iptables -y
sudo apt-get install kmod -y
```

