variable "vpc_name" {}
variable "cidr_block" {}
variable "subnet_cidr_block" {}
variable "region" {}

resource "azurerm_resource_group" "rg" {
  name     = "${var.vpc_name}-rg"
  location = var.region
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vpc_name
  address_space       = [var.cidr_block]
  location            = var.region
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.vpc_name}-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet_cidr_block]
}
