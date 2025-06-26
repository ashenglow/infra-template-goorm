# iam/external-secrets-irsa.tf
data "aws_iam_policy_document" "eso_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    principals {
      type        = "Federated"
      identifiers = [var.oidc_provider_arn]
    }
    condition {
      test     = "StringEquals"
      variable = "${replace(var.oidc_provider_url, "https://", "")}:sub"
      values   = ["system:serviceaccount:external-secrets:external-secrets"]
    }
  }
}

data "aws_iam_policy_document" "eso_policy_doc" {
  statement {
    actions = [
      "secretsmanager:GetSecretValue",
      "secretsmanager:DescribeSecret"
    ]
    resources = ["*"]
  }
}

resource "aws_iam_role" "external_secrets_irsa" {
  name               = "external-secrets-irsa"
  assume_role_policy = data.aws_iam_policy_document.eso_assume_role_policy.json
}

resource "aws_iam_policy" "external_secrets_policy" {
  name   = "external-secrets-access"
  policy = data.aws_iam_policy_document.eso_policy_doc.json
}

resource "aws_iam_role_policy_attachment" "external_secrets_policy_attach" {
  role       = aws_iam_role.external_secrets_irsa.name
  policy_arn = aws_iam_policy.external_secrets_policy.arn
}