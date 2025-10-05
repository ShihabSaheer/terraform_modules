module "aws_storage" {
  source    = "./aws"
  providers = { aws = aws }
  count     = var.cloud_provider == "aws" ? 1 : 0

  bucket_name = var.bucket_name
  region      = var.region
}

module "azure_storage" {
  source    = "./azure"
  providers = { azurerm = azurerm }
  count     = var.cloud_provider == "azure" ? 1 : 0

  bucket_name = var.bucket_name
  region      = var.region
}

module "gcp_storage" {
  source    = "./gcp"
  providers = { google = google }
  count     = var.cloud_provider == "gcp" ? 1 : 0

  bucket_name = var.bucket_name
  region      = var.region
}
