#!/bin/bash

#bash build_cert.sh

/home/druaruef/derper/derper -c /home/druaruef/derper/derper.conf --hostname="127.0.0.1" --certmode=manual --certdir="/home/druaruef/derper/certs/" --stun="true" --a=":18889" -stun-port="34788" --http-port="-1" --verify-clients="false"