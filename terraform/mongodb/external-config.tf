variable "mongo_uri" {
  description = "MongoDB Atlas URI"
  sensitive   = true
}

output "mongo_uri" {
  value = var.mongo_uri
  sensitive = true
}
