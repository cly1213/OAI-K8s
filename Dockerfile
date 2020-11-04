FROM oai_hss:v5 
MAINTAINER Leo Chen
#oai_mme:v5
#oai_spgw:v5
#oai_enb:v5


#ToDo
CMD ./ip_get.sh; ./run_hss
# ./run_mme
# ./run_spgw
# ./lte-softmodem -O enb.10MHz.b200

##ENTRYPOINT ./lte-softmodem -O enb.10MHz.b200

#Need to rebuild Dockerfile
