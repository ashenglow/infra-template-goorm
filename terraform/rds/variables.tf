variable "db_name" {
  description = "RDS DB 이름"
  type        = string
  default     = "mydb"
}

variable "db_username" {
  description = "RDS master 사용자 이름"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "RDS master 비밀번호"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "RDS 인스턴스 타입"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "디스크 크기 (GiB)"
  type        = number
  default     = 20
}

variable "vpc_id" {}
variable "private_subnet_ids" {
  type = list(string)
}

variable "db_engine" {
  description = "DB 엔진 (예: mysql, postgres)"
  type        = string
  default     = "mysql"
}

variable "db_engine_version" {
  description = "DB 엔진 버전"
  type        = string
  default     = "8.0"
}
