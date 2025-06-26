# iam/argocd-irsa-role.tf
data "aws_iam_policy_document" "argocd_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    principals {
      type        = "Federated"
      identifiers = [var.oidc_provider_arn]
    }
    condition {
      test     = "StringEquals"
      variable = "${replace(var.oidc_provider_url, "https://", "")}:sub"
      values   = ["system:serviceaccount:argocd:argocd-application-controller"]
    }
  }
}

resource "aws_iam_role" "argocd_irsa_role" {
  name               = "argocd-irsa-role"
  assume_role_policy = data.aws_iam_policy_document.argocd_assume_role_policy.json
}