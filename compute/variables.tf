variable "cloud_provider" {
  description = "The cloud provider to deploy resources on (aws, azure, gcp)"
  type        = string
}

variable "instance_name" {
  description = "Name of the compute instance"
  type        = string
}

variable "instance_type" {
  description = "The compute instance type"
  type        = string
}

variable "region" {
  description = "Region to deploy the resources"
  type        = string
}

# Add any provider-specific credentials as optional vars
variable "aws_access_key" {
  type      = string
  default   = null
}

variable "aws_secret_key" {
  type      = string
  default   = null
}
