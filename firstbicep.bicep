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
