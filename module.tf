provider "azurerm" {
  features {}
  subscription_id = "f883cd5c-e22c-4378-be13-b5f6e30b90e8"
}

module "sub1" {
  source      = "./subnet"
  subnet_name = "sub1"
  subnet_CIDR = "10.0.1.0/24"
  rg_name     = "rg01-b1"
  rg_location = "East US"
  vnet-name   = "example-network"
}
