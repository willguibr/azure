# Standalone MetaPort Deployment for Azure Cloud

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fwillguibr%2Fazure%2Fmain%2FLatest%2Fmetaport-standalone-public-v1.0%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fwillguibr%2Fazure%2Fmain%2FLatest%2Fmetaport-standalone-public-v1.0%2Fazuredeploy.json)

## Pre-Requisite
This template creates a single virtual machine and a security group Network Security Group, in order to allow outbound connectivity to the Proofpoint Meta Cloud.

## Note
1. This template deploys and onboard a single MetaPort Connector into a Public subnet.
2. When running MetaPort diagnostic commands such as "metaport check", the first 3 tests will fail as those use ICMP to external addresses. Ping external address from Azure VMs are not allowed as Azure does not permit outbound ICMP.