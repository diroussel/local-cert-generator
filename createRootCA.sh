#!/usr/bin/env bash

[ ! -d root ] && mkdir root
[ ! -f root/rootCA.key ] && openssl genrsa -out root/rootCA.key 2048
[ ! -f root/rootCA.pem ] && openssl req -x509 -new -nodes -key root/rootCA.key -sha256 -days 1024 -out root/rootCA.pem
