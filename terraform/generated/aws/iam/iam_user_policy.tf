resource "aws_iam_user_policy" "tfer--DH_EksConsoleAdmin" {
  name = "EksConsoleAdmin"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "eks:DescribeCluster",
        "eks:ListNodegroups",
        "eks:DescribeNodegroup",
        "ec2:DescribeInstances",
        "autoscaling:DescribeAutoScalingGroups"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "DH"
}

resource "aws_iam_user_policy" "tfer--s3User_bucket-permit" {
  name = "bucket-permit"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::goorm-front",
        "arn:aws:s3:::goorm-front/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  user = "s3User"
}
