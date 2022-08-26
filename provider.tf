provider "aws" {
    region = "us-east-1"
}


terraform {
  backend "s3" {
    bucket = "b49-rf-remote-state-bucket"
    key    = "dev/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

terraform {
  backend "s3" {
    bucket = "b49-rf-remote-state-bucket"
    key    = "dev/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}