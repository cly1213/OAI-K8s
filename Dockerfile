FROM oai_hss:v5 
MAINTAINER Leo Chen 
#docker hub: https://hub.docker.com/u/cly1213
#oai_mme:v5
#oai_spgw:v5
#oai_enb:v5

#To Do
CMD ./ip_get.sh; ./run_hss
# ./run_mme
# ./run_spgw
# ./lte-softmodem -O enb.10MHz.b200

##ENTRYPOINT ./lte-softmodem -O enb.10MHz.b200

#Need to rebuild Dockerfile

