resource "aws_instance" "server" {

 ami = var.ami

 instance_type = var.instance_type


 tags = {

  Name = "tutorial9-module-server"

 }

}
