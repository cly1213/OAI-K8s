FROM ubuntu:18.04

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install iputils-ping software-properties-common git wget psmisc net-tools vim zip sudo -y

WORKDIR /root 
RUN wget https://raw.githubusercontent.com/cly1213/oai/master/opencells-mods-20190923.tgz
RUN tar xf opencells-mods-20190923.tgz
RUN wget https://raw.githubusercontent.com/cly1213/oai/master/openair-cn.tgz
RUN tar xf openair-cn.tgz

WORKDIR openair-cn
RUN git checkout -b 724542d0b59797b010af8c5df15af7f669c1e838
RUN git checkout develop
RUN git apply /root/opencells-mods/EPC.patch

WORKDIR /root

RUN mkdir -p /usr/local/etc/oai
RUN cp -rp /root/opencells-mods/config_epc/* /usr/local/etc/oai

WORKDIR openair-cn/scripts
RUN ./check_hss_s6a_certificate /usr/local/etc/oai/freeDiameter hss.OpenAir5G.Alliance
RUN ./build_hss -i -F
RUN ./build_hss
RUN cp run_hss /root

WORKDIR /root
COPY ip_get.sh .
COPY hss.conf /usr/local/etc/oai/

#To Do
#CMD ./ip_get.sh; ./run_hss

