#!/bin/bash

# Variables
RESOURCE_GROUP="RG-Lab-Qatar-01"
LOCATION="qatarcentral"

# Authentication
echo "Starting Azure Authentication..."
az login

# Infrastructure Deployment
echo "Creating Resource Group: $RESOURCE_GROUP..."
az group create --name $RESOURCE_GROUP --location $LOCATION \
    --tags \
    Project="Cloud-Security-Lab" \
    Owner="Bogdan" \
    Environment="Dev" \
    Certification="AZ104-SC200"

# Verification
echo "Deployment Validation:"
az group show --name $RESOURCE_GROUP --output table
