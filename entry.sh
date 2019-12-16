#! /usr/bin/bash

set -e -o pipefail

env

# Install kind
curl -L -o kind https://github.com/kubernetes-sigs/kind/releases/download/v${KIND_VERSION}/kind-linux-amd64 && \
install kind /usr/local/bin
rm -f kind

# Install kubectl
curl -LO "https://storage.googleapis.com/kubernetes-release/release/v${KUBERNETES_VERSION}/bin/linux/amd64/kubectl"
sudo install kubectl /usr/local/bin/
rm -f kubectl

kind create cluster

kubectl get no
