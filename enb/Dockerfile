FROM ubuntu:18.04

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install software-properties-common git wget psmisc net-tools vim zip sudo -y
RUN add-apt-repository ppa:ettusresearch/uhd
RUN apt-get install libuhd-dev libuhd003 uhd-host -y
<<<<<<< HEAD
RUN apt-get install iputils-ping -y
=======
RUN RUN apt-get install iputils-ping -y
>>>>>>> f3868072f9a41f098257257264a0970463a7d399

RUN echo -n | openssl s_client -showcerts -connect gitlab.eurecom.fr:443 2>/dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' >> /etc/ssl/certs/ca-certificates.crt

WORKDIR /root
RUN git clone https://gitlab.eurecom.fr/oai/openairinterface5g.git
WORKDIR openairinterface5g

#RUN git checkout develop
## R14 version
RUN git checkout -b edb74831dabf79686eb5a92fbf8fc06e6b267d35
RUN git branch -v

RUN /usr/lib/uhd/utils/uhd_images_downloader.py
WORKDIR /root
COPY ip_get.sh .
COPY enb.10MHz.b200 .

RUN /usr/lib/uhd/utils/uhd_images_downloader.py
WORKDIR /root
