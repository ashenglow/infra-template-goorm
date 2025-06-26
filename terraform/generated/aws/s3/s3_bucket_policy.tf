resource "aws_s3_bucket_policy" "tfer--finops-cur-bucket001" {
  bucket = "finops-cur-bucket001"
  policy = "{\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetBucketPolicy\"],\"Condition\":{\"StringLike\":{\"aws:SourceAccount\":\"557690584596\",\"aws:SourceArn\":[\"arn:aws:cur:us-east-1:557690584596:definition/*\",\"arn:aws:bcm-data-exports:us-east-1:557690584596:export/*\"]}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":[\"billingreports.amazonaws.com\",\"bcm-data-exports.amazonaws.com\"]},\"Resource\":[\"arn:aws:s3:::finops-cur-bucket001\",\"arn:aws:s3:::finops-cur-bucket001/*\"],\"Sid\":\"EnableAWSDataExportsToWriteToS3AndCheckPolicy\"}],\"Version\":\"2012-10-17\"}"
  region = "ap-northeast-2"
}

resource "aws_s3_bucket_policy" "tfer--goorm-front" {
  bucket = "goorm-front"
  policy = "{\"Id\":\"PolicyForCloudFrontPrivateContent\",\"Statement\":[{\"Action\":\"s3:GetObject\",\"Condition\":{\"StringEquals\":{\"AWS:SourceArn\":\"arn:aws:cloudfront::557690584596:distribution/EMAHWUD8C2IIW\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"cloudfront.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::goorm-front/*\",\"Sid\":\"AllowCloudFrontServicePrincipal\"},{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::goorm-front/*\",\"Sid\":\"AllowAllGetRequests\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"ArnLike\":{\"aws:SourceArn\":\"arn:aws:logs:us-east-1:557690584596:delivery-source:CreatedByCloudFront-EMAHWUD8C2IIW\"},\"StringEquals\":{\"aws:SourceAccount\":\"557690584596\",\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"delivery.logs.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::goorm-front/AWSLogs/557690584596/CloudFront/*\",\"Sid\":\"AWSLogDeliveryWrite1\"}],\"Version\":\"2012-10-17\"}"
  region = "ap-northeast-2"
}

resource "aws_s3_bucket_policy" "tfer--mycost223311" {
  bucket = "mycost223311"
  policy = "{\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetBucketPolicy\"],\"Condition\":{\"StringLike\":{\"aws:SourceAccount\":\"557690584596\",\"aws:SourceArn\":[\"arn:aws:cur:us-east-1:557690584596:definition/*\",\"arn:aws:bcm-data-exports:us-east-1:557690584596:export/*\"]}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":[\"bcm-data-exports.amazonaws.com\",\"billingreports.amazonaws.com\"]},\"Resource\":[\"arn:aws:s3:::mycost223311\",\"arn:aws:s3:::mycost223311/*\"],\"Sid\":\"EnableAWSDataExportsToWriteToS3AndCheckPolicy\"}],\"Version\":\"2012-10-17\"}"
  region = "ap-northeast-2"
}

resource "aws_s3_bucket_policy" "tfer--react-app-test10" {
  bucket = "react-app-test10"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::react-app-test10/*\",\"Sid\":\"PublicReadGetObject\"}],\"Version\":\"2012-10-17\"}"
  region = "ap-northeast-2"
}

resource "aws_s3_bucket_policy" "tfer--sagemaker-ap-northeast-2-557690584596" {
  bucket = "sagemaker-ap-northeast-2-557690584596"
  policy = "{\"Id\":\"Enforce HTTPS\",\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::sagemaker-ap-northeast-2-557690584596\"}],\"Version\":\"2008-10-17\"}"
  region = "ap-northeast-2"
}

resource "aws_s3_bucket_policy" "tfer--sagemaker-studio-557690584596-yxcjt0yd97" {
  bucket = "sagemaker-studio-557690584596-yxcjt0yd97"
  policy = "{\"Id\":\"Enforce HTTPS\",\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::sagemaker-studio-557690584596-yxcjt0yd97\"}],\"Version\":\"2008-10-17\"}"
  region = "ap-northeast-2"
}

resource "aws_s3_bucket_policy" "tfer--subdomain-002E-aws-test-site-002E-shop" {
  bucket = "subdomain.aws-test-site.shop"
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::subdomain.aws-test-site.shop/*\",\"Sid\":\"PublicReadGetObject\"}],\"Version\":\"2012-10-17\"}"
  region = "ap-northeast-2"
}
