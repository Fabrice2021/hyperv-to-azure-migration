resource "azurerm_resource_group" "network" {
  name     = "${var.project_name}-rg-network"
  location = var.location
}

resource "azurerm_virtual_network" "hub" {
  name                = "${var.project_name}-vnet-hub"
  address_space       = [var.hub_vnet_cidr]
  location            = var.location
  resource_group_name = azurerm_resource_group.network.name
}

resource "azurerm_virtual_network" "spoke" {
  name                = "${var.project_name}-vnet-spoke"
  address_space       = [var.spoke_vnet_cidr]
  location            = var.location
  resource_group_name = azurerm_resource_group.network.name
}

resource "azurerm_subnet" "hub_gateway" {
  name                 = "GatewaySubnet"
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.hub.name
  address_prefixes     = ["10.0.255.0/27"]
}

resource "azurerm_subnet" "spoke_servers" {
  name                 = "servers"
  resource_group_name  = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.spoke.name
  address_prefixes     = ["10.10.0.0/24"]
}

resource "azurerm_virtual_network_peering" "hub_to_spoke" {
  name                      = "hub-to-spoke"
  resource_group_name       = azurerm_resource_group.network.name
  virtual_network_name      = azurerm_virtual_network.hub.name
  remote_virtual_network_id = azurerm_virtual_network.spoke.id
  allow_forwarded_traffic   = true
  allow_virtual_network_access = true
}

resource "azurerm_virtual_network_peering" "spoke_to_hub" {
  name                      = "spoke-to-hub"
  resource_group_name       = azurerm_resource_group.network.name
  virtual_network_name      = azurerm_virtual_network.spoke.name
  remote_virtual_network_id = azurerm_virtual_network.hub.id
  allow_forwarded_traffic   = true
  allow_virtual_network_access = true
}
