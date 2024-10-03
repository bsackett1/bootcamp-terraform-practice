resource "azurerm_resource_group" "rg01" {
  name     = var.rg_name
  location = var.rg_location
}

resource "azurerm_virtual_network" "example" {
  name                = var.vnet-name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg01.location
  resource_group_name = azurerm_resource_group.rg01.name
}

resource "azurerm_subnet" "example" {
  #count = length(var.subnet.name)
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rg01.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = [var.subnet_CIDR]
}

output "sub_id" {
  value = azurerm_subnet.example.id
}
