param storageName string
param location string =  resourceGroup().location


resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'storagedemo12343433nl3'
  location: location
  sku: {
    name: 'Standard_ZRS'
  }
  kind: 'StorageV2'
}
