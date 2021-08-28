# oai_spgw
```bash=
docker build -t spgw_test:1 .

docker run -it --privileged --rm --network oai-network --name="spgw" --cap-add=ALL -v /dev:/dev -v /usr/src:/usr/src -v /dev/bus/usb:/dev/bus/usb -v /lib/modules:/lib/modules spgw_test:1
```

