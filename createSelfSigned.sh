#!/usr/bin/env bash
declare TARGET="chef"
openssl req -new -sha256 -nodes -out $TARGET.csr -newkey rsa:2048 -keyout server.key -config $TARGET.csr.cnf
openssl x509 -req -in $TARGET.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out $TARGET.crt -days 500 -sha256 -extfile $TARGET.v3.ext
