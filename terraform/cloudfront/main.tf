resource "aws_cloudfront_distribution" "goorm_front" {
  enabled             = true
  is_ipv6_enabled     = true
  comment             = "CloudFront distribution for goorm-front S3 website"
  price_class         = "PriceClass_All"
  aliases             = ["front.aws-test-site.shop"]
  default_root_object = "index.html"
  http_version        = "http2"

  origin {
    domain_name = "goorm-front.s3.ap-northeast-2.amazonaws.com"
    origin_id   = "goorm_front_s3"

    s3_origin_config {
      origin_access_identity = ""
    }
  }

  origin {
    domain_name = "api.aws-test-site.shop"
    origin_id   = "api_origin"

    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "https-only"
      origin_ssl_protocols   = ["TLSv1.2"]
    }

    custom_header {
      name  = "X-CloudFront-Secret"
      value = "goormcloud"
    }
  }

  default_cache_behavior {
    target_origin_id       = "goorm_front_s3"
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods        = ["GET", "HEAD", "OPTIONS"]
    cached_methods         = ["GET", "HEAD"]
    compress               = true

    cache_policy_id          = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    origin_request_policy_id = "88a5eaf4-2fd4-4709-b370-b4c650ea3fcf"
  }

  ordered_cache_behavior {
    path_pattern           = "/api/*"
    target_origin_id       = "api_origin"
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods        = ["GET", "HEAD", "OPTIONS", "PUT", "POST", "PATCH", "DELETE"]
    cached_methods         = ["GET", "HEAD"]
    compress               = true

    cache_policy_id            = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"
    origin_request_policy_id   = "216adef6-5c7f-47e4-b989-5492eafa07d3"
    response_headers_policy_id = "5cc3b908-e619-4b99-88e5-2cf7f45965bd"
  }

  custom_error_response {
    error_code            = 403
    response_code         = 200
    response_page_path    = "/index.html"
    error_caching_min_ttl = 10
  }

  custom_error_response {
    error_code            = 404
    response_code         = 200
    response_page_path    = "/index.html"
    error_caching_min_ttl = 10
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:557690584596:certificate/7039ad52-aeec-4032-9bf0-751806f4b4db"
    ssl_support_method             = "sni-only"
    minimum_protocol_version       = "TLSv1.2_2021"
    cloudfront_default_certificate = false
  }
}
