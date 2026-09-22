param location string = 'canadacentral'
param projectName string
param hubCidr string
param spokeCidr string

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: '${projectName}-rg-network'
  location: location
}

resource hubVnet 'Microsoft.Network/virtualNetworks@2022-07-01' = {
  name: '${projectName}-vnet-hub'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [hubCidr]
    }
  }
}

resource spokeVnet 'Microsoft.Network/virtualNetworks@2022-07-01' = {
  name: '${projectName}-vnet-spoke'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [spokeCidr]
    }
  }
}
