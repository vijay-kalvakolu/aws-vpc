provider "aws" {
    region = var.region
}
# Rsources
 # Respurce 1 : VPC
 resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr_block
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = merge(var.tags, {Name="dev-vpc"})
 }

 # Resource 2 : IGW
 resource "aws_internet_gateway" "main_igw" {
   vpc_id = aws_vpc.main.id
   tags = merge(var.tags, {Name="dev-igw"})
 }

 # Resource 3 : Public subnet
 # Resource 4: Private Subnet
 # Resource 5 : NAT Gateway
 # Resource 6 : Public Route table
 # Resource 7 : Public Route Table assocaite to Public Subnet
 # Resource 8 : Private Route table
 # Resource 9 : Private Route Table assocaite to Private Subnet
 # Resource 10 : Elastic IP for NAT Gateway (EIP)
 resource "aws_eip" "NAT_EIP" {
  tags = merge(var.tags, {Name = "${var.env_name}-nat-eip"}) 
 }  
