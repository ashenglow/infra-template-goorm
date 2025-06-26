# eks/eks.tf
resource "aws_eks_cluster" "main" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.private_subnet_ids
  }

  kubernetes_network_config {
    service_ipv4_cidr = "10.100.0.0/16"
  }

  depends_on = [
    aws_iam_role.eks_cluster_role
  ]
}