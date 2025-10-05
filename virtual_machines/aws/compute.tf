resource "aws_instance" "this" {
  ami           = "ami-0c55b159cbfafe1f0" # or use data to fetch latest
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}
