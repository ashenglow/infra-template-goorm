resource "aws_iam_user" "tfer--AIDAYDWHS7YKAPRMKZDZK" {
  force_destroy = "false"
  name          = "s3User"
  path          = "/"

  tags = {
    AKIAYDWHS7YKG67RXNGZ = "frontend-s3 user"
  }

  tags_all = {
    AKIAYDWHS7YKG67RXNGZ = "frontend-s3 user"
  }
}

resource "aws_iam_user" "tfer--AIDAYDWHS7YKD7LKE5PO7" {
  force_destroy = "false"
  name          = "SM-spark-admin"
  path          = "/"

  tags = {
    AKIAYDWHS7YKH5H2JPMQ = "Spark Cluster Development"
  }

  tags_all = {
    AKIAYDWHS7YKH5H2JPMQ = "Spark Cluster Development"
  }
}

resource "aws_iam_user" "tfer--AIDAYDWHS7YKDR25RIRJ3" {
  force_destroy = "false"
  name          = "ubuntu-home"
  path          = "/"

  tags = {
    AKIAYDWHS7YKPWIJXFT3 = "cost-monitoring"
  }

  tags_all = {
    AKIAYDWHS7YKPWIJXFT3 = "cost-monitoring"
  }
}

resource "aws_iam_user" "tfer--AIDAYDWHS7YKFGKSUT4NC" {
  force_destroy = "false"
  name          = "eks-admin-user"
  path          = "/"

  tags = {
    AKIAYDWHS7YKCTYMP756 = "eks admin user"
  }

  tags_all = {
    AKIAYDWHS7YKCTYMP756 = "eks admin user"
  }
}

resource "aws_iam_user" "tfer--AIDAYDWHS7YKHHCFOMGZZ" {
  force_destroy        = "false"
  name                 = "1_user"
  path                 = "/"
  permissions_boundary = "arn:aws:iam::aws:policy/AdministratorAccess"

  tags = {
    AKIAYDWHS7YKPJLMI432 = "123"
  }

  tags_all = {
    AKIAYDWHS7YKPJLMI432 = "123"
  }
}

resource "aws_iam_user" "tfer--AIDAYDWHS7YKKV4QHE3KQ" {
  force_destroy = "false"
  name          = "DH"
  path          = "/"
}
