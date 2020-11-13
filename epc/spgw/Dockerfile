FROM epc_test:2

WORKDIR /root
COPY ip_get.sh .
COPY spgw.conf /usr/local/etc/oai

RUN cp /root/openair-cn/scripts/run_spgw /root

#To Do
#CMD ./ip_get.sh; ./run_spgw
