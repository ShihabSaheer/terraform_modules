module "aws_vpc" {
  source    = "./aws"
  count     = var.cloud_provider == "aws" ? 1 : 0
  providers = { aws = aws }

  vpc_name          = var.vpc_name
  cidr_block        = var.cidr_block
  subnet_cidr_block = var.subnet_cidr_block
}

module "azure_vnet" {
  source    = "./azure"
  count     = var.cloud_provider == "azure" ? 1 : 0
  providers = { azurerm = azurerm }

  vpc_name          = var.vpc_name
  cidr_block        = var.cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  region            = var.region
}

module "gcp_network" {
  source    = "./gcp"
  count     = var.cloud_provider == "gcp" ? 1 : 0
  providers = { google = google }

  vpc_name          = var.vpc_name
  cidr_block        = var.cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  region            = var.region
}

