#!/bin/bash

echo "delete *.yml files"
rm *.yaml

echo "delete pods..."
oc delete pods --all
echo "delete services..."
# Do not delete all services, it destroies basic functionality on OS
# oc delete services --all
oc delete services customer-core
oc delete services customer-management-backend
oc delete services customer-management-frontend
oc delete services spring-boot-admin
echo "delete deploymentconfigs..."
oc delete deploymentconfigs --all
echo "delete imagestreams..."
oc delete imagestreams --all
echo "delete buildconfig..."
oc delete buildconfig --all
