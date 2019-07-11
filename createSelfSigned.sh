#!/usr/bin/env bash
declare TARGET="chef"

[ ! -d certs ] && mkdir certs
[ ! -d certs/$TARGET ] && mkdir certs/$TARGET
[ ! -f certs/$TARGET/$TARGET.csr ] && openssl req -new -sha256 -nodes -out certs/$TARGET/$TARGET.csr -newkey rsa:2048 -keyout certs/$TARGET/$TARGET.key -config $TARGET.csr.cnf
[ ! -f certs/$TARGET/$TARGET.crt ] && openssl x509 -req -in certs/$TARGET/$TARGET.csr -CA root/rootCA.pem -CAkey root/rootCA.key -CAcreateserial -out certs/$TARGET/$TARGET.crt -days 500 -sha256 -extfile $TARGET.v3.ext
