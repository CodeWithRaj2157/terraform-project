provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
