# vpc/main.tf (이미 생성된 VPC/Subnet 참조)
data "aws_vpc" "selected" {
  id = "vpc-0de40f141ee21d451"
}

data "aws_subnet" "subnet_a" {
  id = "subnet-0306e2be990c21612"
}

data "aws_subnet" "subnet_b" {
  id = "subnet-0f5f8ff62a2547366"
}