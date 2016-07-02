#!/bin/bash
set -eo pipefail

echo "server=1
maxconnections=${MAX_CONNECTIONS}
rpcuser=${RPC_USER}
rpcpassword=${RPC_PASS}
rpcallowip=${RPC_ALLOW_IP}
rpcport=${RPC_PORT}
port=${PORT}
txindex=1" > /data/namecoin/namecoin.conf

exec "$@"
