#!/bin/bash

mkdir -p certificates

# Certificate & Key creation
openssl req -x509 -new -newkey rsa:4096 -nodes -out certificates/certificate.crt -keyout certificates/certificate.key -subj "/C=NA/ST=NA/L=NA/O=NA/OU=NA/CN=my_app/" -sha256

chmod a+u certificates/certificate.key