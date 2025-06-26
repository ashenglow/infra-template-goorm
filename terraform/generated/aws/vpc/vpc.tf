resource "aws_vpc" "tfer--vpc-0bdd39fcd6bb58a01" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "192.168.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"
  region                               = "ap-northeast-2"

  tags = {
    Name = "unuse"
  }

  tags_all = {
    Name = "unuse"
  }
}

resource "aws_vpc" "tfer--vpc-0de40f141ee21d451" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "10.0.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"
  region                               = "ap-northeast-2"

  tags = {
    Name = "projectvpc"
  }

  tags_all = {
    Name = "projectvpc"
  }
}
