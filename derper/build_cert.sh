#!/bin/bash

echo "[req]
default_bits  = 2048
distinguished_name = req_distinguished_name
req_extensions = req_ext
x509_extensions = v3_req
prompt = no

[req_distinguished_name]
countryName = XX
stateOrProvinceName = N/A
localityName = N/A
organizationName = Self-signed certificate
commonName = 127.0.0.1: Self-signed certificate

[req_ext]
subjectAltName = @alt_names

[v3_req]
subjectAltName = @alt_names

[alt_names]
IP.1 = 127.0.0.1
" > "/home/druaruef/derper/san.conf"

mkdir -p "/home/druaruef/derper/certs/"
openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout "/home/druaruef/derper/certs/127.0.0.1.key" -out "/home/druaruef/derper/certs/127.0.0.1.crt" -config "/home/druaruef/derper/san.conf"