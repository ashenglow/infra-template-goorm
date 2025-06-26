# variables.tf
variable "region" {
  description = "AWS 리전"
  type        = string
}

variable "backend_bucket" {
  description = "Terraform state 저장용 S3 버킷"
  type        = string
}

variable "backend_lock_table" {
  description = "Terraform lock용 DynamoDB 테이블"
  type        = string
}

variable "cluster_name" {
  description = "EKS 클러스터 이름"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private Subnet 목록"
  type        = list(string)
}

variable "common_tags" {
  description = "공통 태그"
  type        = map(string)
  default     = {
    Project     = "GoormPlay"
    Environment = "prod"
  }
}

variable "oidc_provider_arn" {
  description = "OIDC provider ARN for IRSA"
  type        = string
}

variable "oidc_provider_url" {
  description = "OIDC provider URL for IRSA"
  type        = string
}
