#!/bin/bash -xv
sudo apt update -y 
sudo apt install docker-ce 
mkdir ~/bin 
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.12.0/kind-linux-amd64
chmod +x ./kind
mv kind ~/bin
curl -LO https://dl.k8s.io/release/v1.21.1/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv kubectl ~/bin
docker image prune -a -y
kind create cluster



 
