resource "aws_iam_user_policy_attachment" "tfer--1_user_AWSCostAndUsageReportAutomationPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSCostAndUsageReportAutomationPolicy"
  user       = "1_user"
}

resource "aws_iam_user_policy_attachment" "tfer--1_user_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "1_user"
}

resource "aws_iam_user_policy_attachment" "tfer--DH_AWSCostAndUsageReportAutomationPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSCostAndUsageReportAutomationPolicy"
  user       = "DH"
}

resource "aws_iam_user_policy_attachment" "tfer--DH_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "DH"
}

resource "aws_iam_user_policy_attachment" "tfer--SM-spark-admin_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  user       = "SM-spark-admin"
}

resource "aws_iam_user_policy_attachment" "tfer--SM-spark-admin_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = "SM-spark-admin"
}

resource "aws_iam_user_policy_attachment" "tfer--SM-spark-admin_AmazonVPCFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
  user       = "SM-spark-admin"
}

resource "aws_iam_user_policy_attachment" "tfer--SM-spark-admin_IAMReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
  user       = "SM-spark-admin"
}

resource "aws_iam_user_policy_attachment" "tfer--eks-admin-user_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "eks-admin-user"
}

resource "aws_iam_user_policy_attachment" "tfer--s3User_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  user       = "s3User"
}

resource "aws_iam_user_policy_attachment" "tfer--ubuntu-home_AWSCostAndUsageReportAutomationPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSCostAndUsageReportAutomationPolicy"
  user       = "ubuntu-home"
}

resource "aws_iam_user_policy_attachment" "tfer--ubuntu-home_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  user       = "ubuntu-home"
}

resource "aws_iam_user_policy_attachment" "tfer--ubuntu-home_CostOptimizationHubAdminAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CostOptimizationHubAdminAccess"
  user       = "ubuntu-home"
}

resource "aws_iam_user_policy_attachment" "tfer--ubuntu-home_CostOptimizationHubReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CostOptimizationHubReadOnlyAccess"
  user       = "ubuntu-home"
}
