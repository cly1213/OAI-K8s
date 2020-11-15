FROM epc_test:2

WORKDIR /root 
COPY ip_get.sh .
COPY hss.conf /usr/local/etc/oai/

RUN cp /root/openair-cn/scripts/run_hss /root

#To Do
CMD ./ip_get.sh; ./run_hss

