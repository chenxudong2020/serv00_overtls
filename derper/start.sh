#!/bin/bash
DERPR_PATH = "/usr/home/druaruef/derper"
DERP_HOST = 127.0.0.1
mkdir - p $DERPR_PATH/certs/
"$DERPR_PATH/build_cert.sh" "$DERP_HOST" "$DERPR_PATH/certs/" "$DERPR_PATH/san.conf"


DERP_STUN = true
DERP_ADDR= :18889 
DERP_HTTP_PORT = -1
DERP_VERIFY_CLIENTS = false

"$DERPR_PATH/derper" --hostname="$DERP_HOST" \
        --certmode=manual \
        --certdir="$DERPR_PATH/certs/" \
        --stun="$DERP_STUN" \
        --a="$DERP_ADDR" \
        --http-port="$DERP_HTTP_PORT" \
        --verify-clients="$DERP_VERIFY_CLIENTS"