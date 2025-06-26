# backend.tf (S3 backend + DynamoDB)
terraform {
  backend "s3" {
    bucket         = "goormplay-terraform-backend"
    key            = "eks/terraform.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = "goormplay-terraform-lock"
    encrypt        = true
  }
}