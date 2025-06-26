output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.goorm_front.id
}

output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.goorm_front.domain_name
}
