# module "vpc" {
#   source = "git::https://github.com/b49-clouddevops/tf-module-vpc.git?ref=main"
# }

module "vpc" {
  source       = "./vendor/modules/vpc"
  VPC_CIDR     = var.VPC_CIDR
  ENV          = var.ENV
  SUBNET_CIDR  = var.SUBNET_CIDR 
  AZ           = var.AZ
}

# You cannot parameterise the source section of the terraform module : Branc name cannot be parameterised. 
# That's the challenge with terraform : Terrafile from coretech

