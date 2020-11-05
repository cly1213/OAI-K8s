#docker hub: https://hub.docker.com/u/cly1213
FROM oai_hss:v5 
MAINTAINER Leo Chen 

#To Do
CMD ./ip_get.sh; ./run_hss
# ./run_mme
# ./run_spgw
# ./lte-softmodem -O enb.10MHz.b200

#Need to rebuild Dockerfile

