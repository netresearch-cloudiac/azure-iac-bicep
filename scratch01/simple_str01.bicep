
param region array = [
  'east-us'
  'west-us'
]

param location string = resourceGroup().location

resource storageAcc 'Microsoft.Storage/storageAccounts@2022-05-01'= {
  name: 'dbstrouid897dh'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind:  'BlobStorage'
}

