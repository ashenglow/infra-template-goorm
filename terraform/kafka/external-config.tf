variable "external_kafka_bootstrap_servers" {
  description = "External Kafka bootstrap servers"
}

output "kafka_bootstrap_servers" {
  value = var.external_kafka_bootstrap_servers
}