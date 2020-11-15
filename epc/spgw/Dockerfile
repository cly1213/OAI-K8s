FROM epc_test:2

RUN apt-get install iptables -y
RUN apt-get install kmod -y

WORKDIR /root
COPY ip_get.sh .
COPY spgw.conf /usr/local/etc/oai

RUN cp /root/openair-cn/scripts/run_spgw /root

#To Do
#CMD ./ip_get.sh; ./run_spgw
