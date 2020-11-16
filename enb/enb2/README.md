# enb_test
```bash=
docker build -t enb_test:3 .

docker run -it --privileged --network oai-network --name="enb" -v /dev/bus/usb:/dev/bus/usb enb_test:3
```
