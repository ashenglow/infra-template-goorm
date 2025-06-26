resource "aws_iam_access_key" "tfer--AKIAYDWHS7YKCTYMP756" {
  depends_on = ["aws_iam_user.tfer--AIDAYDWHS7YKFGKSUT4NC"]
  status     = "Active"
  user       = "eks-admin-user"
}

resource "aws_iam_access_key" "tfer--AKIAYDWHS7YKG67RXNGZ" {
  depends_on = ["aws_iam_user.tfer--AIDAYDWHS7YKAPRMKZDZK"]
  status     = "Active"
  user       = "s3User"
}

resource "aws_iam_access_key" "tfer--AKIAYDWHS7YKH5H2JPMQ" {
  depends_on = ["aws_iam_user.tfer--AIDAYDWHS7YKD7LKE5PO7"]
  status     = "Active"
  user       = "SM-spark-admin"
}

resource "aws_iam_access_key" "tfer--AKIAYDWHS7YKJN44CSHI" {
  depends_on = ["aws_iam_user.tfer--AIDAYDWHS7YKHHCFOMGZZ"]
  status     = "Active"
  user       = "1_user"
}

resource "aws_iam_access_key" "tfer--AKIAYDWHS7YKKDNNQNDF" {
  depends_on = ["aws_iam_user.tfer--AIDAYDWHS7YKDR25RIRJ3"]
  status     = "Active"
  user       = "ubuntu-home"
}

resource "aws_iam_access_key" "tfer--AKIAYDWHS7YKPJLMI432" {
  depends_on = ["aws_iam_user.tfer--AIDAYDWHS7YKHHCFOMGZZ"]
  status     = "Active"
  user       = "1_user"
}

resource "aws_iam_access_key" "tfer--AKIAYDWHS7YKPWIJXFT3" {
  depends_on = ["aws_iam_user.tfer--AIDAYDWHS7YKDR25RIRJ3"]
  status     = "Active"
  user       = "ubuntu-home"
}
