provider "aws" {

 region = "ap-south-1"

}


module "vpc" {

 source = "terraform-aws-modules/vpc/aws"

 version = "5.8.1"


 name = "tutorial10-vpc"


 cidr = "10.0.0.0/16"


 azs = [

 "ap-south-1a"

 ]


 public_subnets = [

 "10.0.1.0/24"

 ]

}
