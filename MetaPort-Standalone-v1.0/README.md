# Standalone MetaPort Deployment for Azure Cloud

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fwillguibr%2Fazure%2Fmain%2Fazuredeploy.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fwillguibr%2Fazure%2Fmain%2Fazuredeploy.json)

## Pre-Requisite
Plese note: This deployment template creates and attach an existing Network Security Group to the virtual machine, in order to allow connectivity to the Proofpoint Meta Cloud.

## Note
1. This template deploys and onboard a single MetaPort Connector into a Public subnet.
2. This template should be used for testing purposes only. We do not recommend to have the MetaPort Connector as a public facing device.
3. When running MetaPort diagnostic commands such as "metaport check", the first 3 tests will fail as those use ICMP to external addresses. Ping external address from Azure VMs are not allowed as Azure does not permit outbound ICMP.

      <a href="https://github.com/willguibr/azure/blob/main/MetaPort-Standalone-v2.0/images/metaport-check.png">
         <img alt="Qries" src="https://github.com/willguibr/azure/blob/main/MetaPort-Standalone-v2.0/images/metaport-check.png">
      </a>
