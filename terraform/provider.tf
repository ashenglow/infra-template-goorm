# provider.tf
provider "aws" {
  region = var.region
}
data "aws_caller_identity" "current" {}

data "aws_vpc" "selected" {
  id = var.vpc_id
}

data "aws_subnet" "private_subnet_1" {
  id = var.private_subnet_ids[0]
}

data "aws_subnet" "private_subnet_2" {
  id = var.private_subnet_ids[1]
}