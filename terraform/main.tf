# Version 1.0

provider "aws" {
  region = var.region
}

data "aws_ami" "latest_amazon_linux" {
  owners      = ["amazon"]
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "test_instance" {
  instance_type = var.instancetype
  ami           = data.aws_ami.latest_amazon_linux.id
}
