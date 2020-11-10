# Standalone MetaPort Deployment for Azure Cloud

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fwillguibr%2Fazure%2Fmain%2FLatest%2Fmetaport-standalone-private-v1.0%2Fazuredeploy.json)

[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fwillguibr%2Fazure%2Fmain%2FLatest%2Fmetaport-standalone-private-v1.0%2Fazuredeploy.json)

## Note
1. This template deploys and onboard a single MetaPort Connector into a private subnet into a single zone set.
2. In the Admin Username field, use the standard username: "ubuntu"
3. For a successful onboard, outbound internet connectivity must be in place via an existing NAT Gateway.
4. When running MetaPort diagnostic commands such as "metaport check", the first 3 tests will fail as those use ICMP to external addresses. Ping external address from Azure VMs are not allowed as Azure does not permit outbound ICMP.

### Microsoft.Network

Description

+ **publicIPAddresses**: Public IP address for NAT gateway.
+ **natGateways**: NAT gateway resource
+ **virtualNetworks**: Virtual network for NAT gateway.
  + **subnets**: Subnet for virtual network for NAT gateway.


`Tags: virtual network, vnet, nat, nat gateway`