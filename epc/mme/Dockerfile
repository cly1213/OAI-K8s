FROM epc_test:2

WORKDIR /root
COPY ip_get.sh .
COPY mme.conf /usr/local/etc/oai/
COPY mme_fd.conf /usr/local/etc/oai/freeDiameter/

RUN cp /root/openair-cn/scripts/run_mme /root

#To Do
#CMD ./ip_get.sh; ./run_mme
