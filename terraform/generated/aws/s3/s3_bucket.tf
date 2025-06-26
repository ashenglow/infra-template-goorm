resource "aws_s3_bucket" "tfer--finops-cur-bucket001" {
  bucket        = "finops-cur-bucket001"
  force_destroy = "false"

  grant {
    id          = "7c5e46e554990540e9c3fd1c688fa63de4114bdd24cd217f90043682a7a35f59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetBucketPolicy"
      ],
      "Condition": {
        "StringLike": {
          "aws:SourceAccount": "557690584596",
          "aws:SourceArn": [
            "arn:aws:cur:us-east-1:557690584596:definition/*",
            "arn:aws:bcm-data-exports:us-east-1:557690584596:export/*"
          ]
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "bcm-data-exports.amazonaws.com",
          "billingreports.amazonaws.com"
        ]
      },
      "Resource": [
        "arn:aws:s3:::finops-cur-bucket001",
        "arn:aws:s3:::finops-cur-bucket001/*"
      ],
      "Sid": "EnableAWSDataExportsToWriteToS3AndCheckPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  region        = "ap-northeast-2"
  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--goorm-customer-log" {
  bucket        = "goorm-customer-log"
  force_destroy = "false"

  grant {
    id          = "7c5e46e554990540e9c3fd1c688fa63de4114bdd24cd217f90043682a7a35f59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  region              = "ap-northeast-2"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  tags = {
    name = "s3-log"
  }

  tags_all = {
    name = "s3-log"
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--goorm-front" {
  bucket        = "goorm-front"
  force_destroy = "false"

  grant {
    id          = "7c5e46e554990540e9c3fd1c688fa63de4114bdd24cd217f90043682a7a35f59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "PolicyForCloudFrontPrivateContent",
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Condition": {
        "StringEquals": {
          "AWS:SourceArn": "arn:aws:cloudfront::557690584596:distribution/EMAHWUD8C2IIW"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudfront.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::goorm-front/*",
      "Sid": "AllowCloudFrontServicePrincipal"
    },
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Resource": "arn:aws:s3:::goorm-front/*",
      "Sid": "AllowAllGetRequests"
    },
    {
      "Action": "s3:PutObject",
      "Condition": {
        "ArnLike": {
          "aws:SourceArn": "arn:aws:logs:us-east-1:557690584596:delivery-source:CreatedByCloudFront-EMAHWUD8C2IIW"
        },
        "StringEquals": {
          "aws:SourceAccount": "557690584596",
          "s3:x-amz-acl": "bucket-owner-full-control"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "delivery.logs.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::goorm-front/AWSLogs/557690584596/CloudFront/*",
      "Sid": "AWSLogDeliveryWrite1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  region        = "ap-northeast-2"
  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "tfer--goormplay-prod-logs" {
  bucket        = "goormplay-prod-logs"
  force_destroy = "false"

  grant {
    id          = "7c5e46e554990540e9c3fd1c688fa63de4114bdd24cd217f90043682a7a35f59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = "0"
    enabled                                = "true"

    expiration {
      days                         = "1095"
      expired_object_delete_marker = "false"
    }

    id     = "auth-lifecycle"
    prefix = "auth/"

    transition {
      days          = "365"
      storage_class = "GLACIER"
    }
  }

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = "0"
    enabled                                = "true"

    expiration {
      days                         = "180"
      expired_object_delete_marker = "false"
    }

    id     = "compute-lifecycle"
    prefix = "compute/"

    transition {
      days          = "90"
      storage_class = "GLACIER"
    }
  }

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = "0"
    enabled                                = "true"

    expiration {
      days                         = "365"
      expired_object_delete_marker = "false"
    }

    id     = "system-lifecycle"
    prefix = "system/"

    transition {
      days          = "180"
      storage_class = "GLACIER"
    }
  }

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = "0"
    enabled                                = "true"

    expiration {
      days                         = "730"
      expired_object_delete_marker = "false"
    }

    id     = "app-error-lifecycle"
    prefix = "app-error/"

    transition {
      days          = "365"
      storage_class = "GLACIER"
    }
  }

  object_lock_enabled = "false"
  region              = "ap-northeast-2"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--goormplay-terraform-backend" {
  bucket        = "goormplay-terraform-backend"
  force_destroy = "false"

  grant {
    id          = "7c5e46e554990540e9c3fd1c688fa63de4114bdd24cd217f90043682a7a35f59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  region              = "ap-northeast-2"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--mycost223311" {
  bucket        = "mycost223311"
  force_destroy = "false"

  grant {
    id          = "7c5e46e554990540e9c3fd1c688fa63de4114bdd24cd217f90043682a7a35f59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetBucketPolicy"
      ],
      "Condition": {
        "StringLike": {
          "aws:SourceAccount": "557690584596",
          "aws:SourceArn": [
            "arn:aws:cur:us-east-1:557690584596:definition/*",
            "arn:aws:bcm-data-exports:us-east-1:557690584596:export/*"
          ]
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "bcm-data-exports.amazonaws.com",
          "billingreports.amazonaws.com"
        ]
      },
      "Resource": [
        "arn:aws:s3:::mycost223311",
        "arn:aws:s3:::mycost223311/*"
      ],
      "Sid": "EnableAWSDataExportsToWriteToS3AndCheckPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  region        = "ap-northeast-2"
  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--ott-data-rara-20250426" {
  bucket        = "ott-data-rara-20250426"
  force_destroy = "false"

  grant {
    id          = "7c5e46e554990540e9c3fd1c688fa63de4114bdd24cd217f90043682a7a35f59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  region              = "ap-northeast-2"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--react-app-test10" {
  bucket        = "react-app-test10"
  force_destroy = "false"

  grant {
    id          = "7c5e46e554990540e9c3fd1c688fa63de4114bdd24cd217f90043682a7a35f59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Resource": "arn:aws:s3:::react-app-test10/*",
      "Sid": "PublicReadGetObject"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  region        = "ap-northeast-2"
  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }

  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "tfer--sagemaker-ap-northeast-2-557690584596" {
  bucket = "sagemaker-ap-northeast-2-557690584596"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["DELETE", "GET", "HEAD", "POST", "PUT"]
    allowed_origins = ["https://*.sagemaker.aws"]
    expose_headers  = ["ETag", "x-amz-delete-marker", "x-amz-id-2", "x-amz-request-id", "x-amz-server-side-encryption", "x-amz-version-id"]
    max_age_seconds = "0"
  }

  force_destroy = "false"

  grant {
    id          = "7c5e46e554990540e9c3fd1c688fa63de4114bdd24cd217f90043682a7a35f59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "Enforce HTTPS",
  "Statement": [
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      },
      "Effect": "Deny",
      "Principal": "*",
      "Resource": "arn:aws:s3:::sagemaker-ap-northeast-2-557690584596"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  region        = "ap-northeast-2"
  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--sagemaker-studio-557690584596-yxcjt0yd97" {
  bucket        = "sagemaker-studio-557690584596-yxcjt0yd97"
  force_destroy = "false"

  grant {
    id          = "7c5e46e554990540e9c3fd1c688fa63de4114bdd24cd217f90043682a7a35f59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "Enforce HTTPS",
  "Statement": [
    {
      "Action": "s3:*",
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      },
      "Effect": "Deny",
      "Principal": "*",
      "Resource": "arn:aws:s3:::sagemaker-studio-557690584596-yxcjt0yd97"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  region        = "ap-northeast-2"
  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--subdomain-002E-aws-test-site-002E-shop" {
  bucket        = "subdomain.aws-test-site.shop"
  force_destroy = "false"

  grant {
    id          = "7c5e46e554990540e9c3fd1c688fa63de4114bdd24cd217f90043682a7a35f59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Resource": "arn:aws:s3:::subdomain.aws-test-site.shop/*",
      "Sid": "PublicReadGetObject"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  region        = "ap-northeast-2"
  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "true"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }

  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "tfer--temp-jar-upload-20250522" {
  bucket        = "temp-jar-upload-20250522"
  force_destroy = "false"

  grant {
    id          = "7c5e46e554990540e9c3fd1c688fa63de4114bdd24cd217f90043682a7a35f59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"
  region              = "ap-northeast-2"
  request_payer       = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}
