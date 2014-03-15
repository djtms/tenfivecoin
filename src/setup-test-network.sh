#!/bin/bash

[ -d $HOME/.tenfivecoin ] && rm -rf $HOME/.tenfivecoin 
[ ! -d $HOME/.tenfivecoin ] && mkdir -pv $HOME/.tenfivecoin

cat <<EOF > $HOME/.tenfivecoin/tenfivecoin.conf
server=1
daemon=1
rpcport=10510
rpcuser=tenfivecoinrpc
rpcpassword=AW3D6VsdfHpsDGfUWtSfwvB5gdgCU7L12CuFQ7QZKyBU
rpcallowip=127.0.0.1
rpcallowip=*
alertnotify=echo %s | mail -s "Tenfive Alert" alert@tenfivecoin.com
EOF

./tenfivecoind -testnet
