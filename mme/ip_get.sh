#!/bin/bash
DB="db"
HSS="hss"
MME="mme"
SPGW="spgw"
ENB="enb"

echo "Hi, I'm waiting for 30 seconds..."
sleep 30

NEW_IP_DB=$(ping $DB -c 1 | grep "PING $DB" | awk '{print $3}')
NEW_IP_DB=${NEW_IP_DB#*(}
NEW_IP_DB=${NEW_IP_DB%)*}
echo $NEW_IP_DB

NEW_IP_HSS=$(ping $HSS -c 1 | grep "PING $HSS" | awk '{print $3}')
NEW_IP_HSS=${NEW_IP_HSS#*(}
NEW_IP_HSS=${NEW_IP_HSS%)*}
echo $NEW_IP_HSS

NEW_IP_MME=$(ping $MME -c 1 | grep "PING $MME" | awk '{print $3}')
NEW_IP_MME=${NEW_IP_MME#*(}
NEW_IP_MME=${NEW_IP_MME%)*}
echo $NEW_IP_MME

NEW_IP_SPGW=$(ping $SPGW -c 1 | grep "PING $SPGW" | awk '{print $3}')
NEW_IP_SPGW=${NEW_IP_SPGW#*(}
NEW_IP_SPGW=${NEW_IP_SPGW%)*}
echo $NEW_IP_SPGW

NEW_IP_ENB=$(ping $ENB -c 1 | grep "PING $ENB" | awk '{print $3}')
NEW_IP_ENB=${NEW_IP_ENB#*(}
NEW_IP_ENB=${NEW_IP_ENB%)*}
echo $NEW_IP_ENB

#mme.conf
sed -i "s/REPLACED_BY_MY_MME_IPV4/${NEW_IP_MME}/g" /usr/local/etc/oai/mme.conf

sed -i "s/REPLACED_BY_MY_SPGW_IPV4/${NEW_IP_SPGW}/g" /usr/local/etc/oai/mme.conf

sed -i "s/REPLACED_BY_MY_HSS_IPV4/${NEW_IP_HSS}/g" /usr/local/etc/oai/freeDiameter/mme_fd.conf

echo "Done!"
