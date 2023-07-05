@allowed(
  ['prod'
  'dev' ]
)
param env string


param storagename string

param location string


var sku = (env == 'prod') ? 'standard_grs' : 'standard_LRS'
resource store 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storagename
  location: location
  sku: {
    name: sku
  }
  kind: 'StorageV2'
}
