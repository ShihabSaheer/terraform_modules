terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  alias      = "aws"
}

provider "azurerm" {
  features {}
  alias = "azure"
}

provider "google" {
  project = "your-gcp-project-id" # replace or make a variable
  region  = var.region
  alias   = "gcp"
}
