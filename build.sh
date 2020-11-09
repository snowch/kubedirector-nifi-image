#!/bin/bash

wget -c  https://www.mirrorservice.org/sites/ftp.apache.org/nifi/1.12.1/nifi-1.12.1-bin.tar.gz

docker build --tag kubedirector-nifi:0.1 .
docker tag kubedirector-nifi:0.1 localhost:5000/kubedirector-nifi:0.1
docker push localhost:5000/kubedirector-nifi:0.1