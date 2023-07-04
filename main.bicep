param storageName string
param location string =  resourceGroup().location


resource storage 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'storagedemo12343433n23'
  location: location
  sku: {
    name: 'Standard_ZRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

BicepCopy

resource appServicePlan 'Microsoft.Web/serverFarms@2022-03-01' = {

name: 'toy-product-launch-plan-starter1556'

location: 'westus3'

sku: {

name: 'F1'

}

}

resource appServiceApp 'Microsoft.Web/sites@2022-03-01' = {

name: 'toy-product-launch-1'

location: 'westus3'

properties: {

serverFarmId: appServicePlan.id

httpsOnly: true

}

}
