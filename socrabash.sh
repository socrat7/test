#!/bin/bash
sudo apt-get update
sudo apt-get install git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake
git clone https://github.com/hyc/cpuminer-multi
cd cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
make
sudo ./minerd -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45700 -u geschaeft7@gmail.com -p x -t 1