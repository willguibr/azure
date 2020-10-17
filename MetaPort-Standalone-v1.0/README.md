# Standalone MetaPort Deployment for Azure Cloud

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fwillguibr%2Fazure%2Fmain%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fwillguibr%2Fazure%2Fmain%2Fazuredeploy.json)

## Note
This template deploys and onboard a single MetaPort Connector into a Public subnet.
This template should be used for testing purposes only. We do not recommend to have the MetaPort Connector as a public facing device.

## Pre-Requisite
Plese note: This deployment template creates and attach an existing Network Security Group to the virtual machine, in order to allow connectivity to the Proofpoint Meta Cloud. 