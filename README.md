# azure-iac-bicep
Bicep samples and test of IaC

## creating a Resource group in Azure CLI
```shell
az group create -g RG-Demo -l eastus
az deployment group create -g RG-Demo -f .\firstbicep.bicep
```

- Parameters
- Variables
- Expressions
    - uniqueString() -- takes a seed value gives a uniqe name, same seed value gives same name
- string interpolation
    - 'toylaunch${resourceGroup().id}'

- parameter decorators
- output
- modules - resualbe code 
    - Have a clear purpose for each module
    - be self-contained as possible
    - should not output secrets

    
