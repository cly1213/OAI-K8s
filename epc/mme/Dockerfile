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
COPY ip_get.sh .
COPY mme.conf /usr/local/etc/oai/
COPY mme_fd.conf /usr/local/etc/oai/freeDiameter/

RUN mkdir -p /usr/local/etc/oai
RUN cp -rp /root/opencells-mods/config_epc/* /usr/local/etc/oai

WORKDIR openair-cn/scripts
#RUN ./check_mme_s6a_certificate /usr/local/etc/oai/freeDiameter mme.OpenAir5G.Alliance
#RUN ./build_mme -i
#RUN ./build_mme
#RUN cp run_mme /root

