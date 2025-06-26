resource "aws_acm_certificate" "tfer--8b155b57-af70-4847-8ecc-1444e31f6032_server-002E-vpn-002E-internal" {
  domain_name   = "server.vpn.internal"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "DISABLED"
  }

  region                    = "ap-northeast-2"
  subject_alternative_names = ["server.vpn.internal"]
  validation_method         = "NONE"
}

resource "aws_acm_certificate" "tfer--9f7c47e4-b536-4eb1-ae25-2738635e28be_client1-002E-domain-002E-tld" {
  domain_name   = "client1.domain.tld"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "DISABLED"
  }

  region                    = "ap-northeast-2"
  subject_alternative_names = ["client1.domain.tld"]
  validation_method         = "NONE"
}

resource "aws_acm_certificate" "tfer--e491f298-1ecc-4586-95d9-47e288a350ac_aws-test-site-002E-shop" {
  domain_name   = "aws-test-site.shop"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  region                    = "ap-northeast-2"
  subject_alternative_names = ["api.aws-test-site.shop", "aws-test-site.shop"]

  tags = {
    Name = "https"
  }

  tags_all = {
    Name = "https"
  }

  validation_method = "DNS"
}

resource "aws_acm_certificate" "tfer--f217d781-d8da-453d-ba6d-eb2e2f78518b_server-002E-vpn-002E-example-002E-com" {
  domain_name   = "server.vpn.example.com"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "DISABLED"
  }

  region                    = "ap-northeast-2"
  subject_alternative_names = ["server.vpn.example.com"]
  validation_method         = "NONE"
}
