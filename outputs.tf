# Outputs helps you in sharing the information to other modules as they are going to be published in a format that others can read
output "VPC_ID" {
    value = module.vpc.VPC_ID 
}

output "VPC_CIDR" {
    value = module.vpc.VPC_CIDR
}

output "PRIVATE_SUBNET_ID" {
    value = module.vpc.PUBLIC_SUBNET_ID
}

output "PUBLIC_SUBNET_ID" {
    value = aws_subnet.public.*.id 
}


output "PRIVATE_SUBNET_CIDR" {
    value = aws_subnet.private.*.cidr_block 
}

output "PUBLIC_SUBNET_CIDR" {
    value = aws_subnet.public.*.cidr_block
}

output "DEFAULT_VPC_ID" {
    value = var.DEFAULT_VPC_ID
}

output "DEFAULT_VPC_CIDR" {
    value = var.DEFAULT_VPC_CIDR
}