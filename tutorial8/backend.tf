terraform {

  backend "s3" {

    bucket = "raj-terraform-test-demo-state-bucket"

    key = "tutorial8.tfstate"

    region = "ap-south-1"

  }

}
