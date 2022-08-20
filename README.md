# azure-iac-bicep
Bicep samples and test of IaC

## creating a Resource group in Azure CLI
```shell
az group create -g RG-Demo -l eastus
az deployment group create -g RG-Demo -f .\firstbicep.bicep
```