variable "cloud_provider" {
  description = "The cloud provider to deploy resources on (aws, azure, gcp)"
  type        = string
}

variable "bucket_name" {
  description = "Name of the bucket/container to be created"
  type        = string
}

variable "region" {
  description = "Region to deploy the storage"
  type        = string
}

# Optional credentials
variable "aws_access_key" {
  type    = string
  default = null
}

variable "aws_secret_key" {
  type    = string
  default = null
}
