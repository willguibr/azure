# Multi-AZ MetaPort Deployment for Azure Cloud

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fwillguibr%2Fazure%2Fmain%2FMetaPort-Standalone-v2.0%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fwillguibr%2Fazure%2Fmain%2FMetaPort-Standalone-v2.0%2Fazuredeploy.json)

## Note
This template deploys and onboard a pair of MetaPort Connector into a private subnet in different availability zones.
For a successful onboard outbound internet connectivity must be in place via an existing NAT Gateway.

## Pre-Requisite
Plese note: This deployment template creates and attach an existing Network Security Group to the virtual machine, in order to allow connectivity to the Proofpoint Meta Cloud. 