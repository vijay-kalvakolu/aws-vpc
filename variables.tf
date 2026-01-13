variable "region" {
    default = "us-east-1"
}
variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
}

variable "tags" {
    default = "aws-module-vpc"
}
variable "env_name" {
  default = "dev"
}