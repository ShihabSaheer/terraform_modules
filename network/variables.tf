variable "cloud_provider" {
  description = "The cloud provider to deploy VPC/network resources (aws, azure, gcp)"
  type        = string
}

variable "region" {
  description = "Region to deploy the network in"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC/Virtual Network"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}
