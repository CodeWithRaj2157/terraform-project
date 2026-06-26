provider "aws" {

 region = "ap-south-1"

}


module "ec2_server" {

 source = "./modules/ec2"


 ami = "ami-01a00762f46d584a1"

 instance_type = "t3.micro"

}
