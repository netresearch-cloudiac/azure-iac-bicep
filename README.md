# azure-iac-bicep
Bicep samples and test of IaC

## dependency
az extension add --name deployment

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

    
```shell

az group create --name exampleRG --location eastus

## simple Linux VM template
az deployment group create --resource-group exampleRG --template-file simplelinuxVM.bicep --parameters vmName='kaviatebook1' adminUsername=<admin-username> adminPasswordOrKey=<'suitable password'> vmSize='Standard_D2s'

## list resources
az resource list --resource-group exampleRG

## delete 
```

Note: parameters are given with space

# Subscription level deployment
eg. simplelinuxVM_v2.bicep
```shell

az group create --name exampleRG --location eastus

## simple Linux VM template
az deployment create --location eastus --template-file simplelinuxVM_v2.bicep --parameters rgname='RG-ebook-reader' vmName='kaviatebook1' adminUsername='username' adminPasswordOrKey='password' vmSize='Standard_D2s'
```


# Issues encountered
## deployment fails when subnet is defined as seperate function.
- it should be defined within VNET to overcome the bug