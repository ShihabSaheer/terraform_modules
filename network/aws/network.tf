variable "vpc_name" {}
variable "cidr_block" {}
variable "subnet_cidr_block" {}

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = "us-west-2a" # or make it a variable
  tags = {
    Name = "${var.vpc_name}-subnet"
  }
}
