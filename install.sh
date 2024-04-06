#!/bin/bash

cd ~
wget https://github.com/availproject/avail-light/releases/download/v1.7.10/avail-light-linux-amd64.tar.gz
tar -zxvf avail-light-linux-amd64.tar.gz
./avail-light-linux-amd64 --network goldberg
cat identity.toml
