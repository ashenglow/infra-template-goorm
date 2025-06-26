# external-secrets/alb-controller.tf
resource "helm_release" "eso" {
  name       = "external-secrets"
  repository = "https://charts.external-secrets.io"
  chart      = "external-secrets"
  namespace  = "external-secrets"
  create_namespace = true
}
