resource "aws_iam_instance_profile" "tfer--AmazonEKSNodeRole" {
  name = "AmazonEKSNodeRole"
  path = "/"
  role = "AmazonEKSNodeRole"
}

resource "aws_iam_instance_profile" "tfer--ec2-ami-msa" {
  name = "ec2-ami-msa"
  path = "/"
  role = "ec2-ami-msa"
}

resource "aws_iam_instance_profile" "tfer--ec2-rds-role" {
  name = "ec2-rds-role"
  path = "/"
  role = "ec2-rds-role"
}

resource "aws_iam_instance_profile" "tfer--ecsInstanceRole" {
  name = "ecsInstanceRole"
  path = "/"
  role = "ecsInstanceRole"
}

resource "aws_iam_instance_profile" "tfer--eks-50cbb6c2-bc99-c7e8-fc84-ee90e31116a4" {
  name = "eks-50cbb6c2-bc99-c7e8-fc84-ee90e31116a4"
  path = "/"
  role = "eksNodeGroupRole"
}

resource "aws_iam_instance_profile" "tfer--eksAdminRole" {
  name = "eksAdminRole"
  path = "/"
  role = "eksAdminRole"
}

resource "aws_iam_instance_profile" "tfer--eksNodeGroupRole" {
  name = "eksNodeGroupRole"
  path = "/"
  role = "eksNodeGroupRole"
}

resource "aws_iam_instance_profile" "tfer--spark-cluster-s3-role" {
  name = "spark-cluster-s3-role"
  path = "/"
  role = "spark-cluster-s3-role"
}
