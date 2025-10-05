module "aws_compute" {
  source     = "./aws"
  providers  = { aws = aws }
  count      = var.cloud_provider == "aws" ? 1 : 0
  instance_name = var.instance_name
  instance_type = var.instance_type
  region        = var.region
}

module "azure_compute" {
  source     = "./azure"
  providers  = { azurerm = azurerm }
  count      = var.cloud_provider == "azure" ? 1 : 0
  instance_name = var.instance_name
  instance_type = var.instance_type
  region        = var.region
}

module "gcp_compute" {
  source     = "./gcp"
  providers  = { google = google }
  count      = var.cloud_provider == "gcp" ? 1 : 0
  instance_name = var.instance_name
  instance_type = var.instance_type
  region        = var.region
}
