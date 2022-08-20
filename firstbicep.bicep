resource storageaccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: 'sjdlsadjfkljdf'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'toy-product-launch-plan-starter'
  location: 'eastus'
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'sjdlsadjfkljdf'
  location: 'eastus'
   properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
   }
}
