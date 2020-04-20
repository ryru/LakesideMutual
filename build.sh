#!/bin/bash

echo "create converted compose files..."
kompose convert -f ./docker-compose.yml --provider=openshift

echo "deploy on APPUiO..."
kompose up --provider=openshift -f docker-compose.yml --build build-config --namespace=appuio-demo7654 --server http://127.0.0.1:6443
