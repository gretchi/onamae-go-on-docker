#!/bin/ash

if [ "${DOMAIN}" = "example.com" ]; then
    echo -e "\e[31mERROR\e[0m: Did you set an environment variable?"
    exit 1;
else
    /usr/local/bin/onamae-go -h ${HOSTNAME} -d ${DOMAIN} -daemon -interval ${INTERVAL};
fi
