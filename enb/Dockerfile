FROM ubuntu:18.04

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install software-properties-common git wget psmisc net-tools vim zip sudo -y
RUN add-apt-repository ppa:ettusresearch/uhd
RUN apt-get install libuhd-dev libuhd003 uhd-host -y

RUN echo -n | openssl s_client -showcerts -connect gitlab.eurecom.fr:443 2>/dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' >> /etc/ssl/certs/ca-certificates.crt

WORKDIR /root
RUN git clone https://gitlab.eurecom.fr/oai/openairinterface5g.git
WORKDIR openairinterface5g

#RUN git checkout develop
## R14 version
RUN git checkout -b edb74831dabf79686eb5a92fbf8fc06e6b267d35
RUN git branch -v

<<<<<<< HEAD
#WORKDIR cmake_targets
#RUN sudo ./build_oai -I
#RUN sudo ./build_oai -w USRP --eNB --UE

RUN /usr/lib/uhd/utils/uhd_images_downloader.py
WORKDIR /root
COPY ip_get.sh .

#Verify that USRP is working
#RUN uhd_find_devices
#RUN uhd_usrp_probe
=======
RUN /usr/lib/uhd/utils/uhd_images_downloader.py
WORKDIR /root
>>>>>>> 68821aee51c2c07574c033e7f80b7f2d6ff90523
