provider "azurerm" {
  features {}
}

module "sub1" {
  source      = "./subnet"
  subnet_name = "sub1"
  subnet_CIDR = "10.0.1.0/24"
  rg_name     = "rg01-b1"
  vnet-name   = "example-network"
}
