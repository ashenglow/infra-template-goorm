resource "aws_subnet" "tfer--subnet-00c246ce288c3cbf8" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.10.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name                                     = "프로젝트-subnet-public1-ap-northeast-2a"
    "kubernetes.io/cluster/eks-main-cluster" = "shared"
    "kubernetes.io/role/elb"                 = "1"
  }

  tags_all = {
    Name                                     = "프로젝트-subnet-public1-ap-northeast-2a"
    "kubernetes.io/cluster/eks-main-cluster" = "shared"
    "kubernetes.io/role/elb"                 = "1"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0de40f141ee21d451_id}"
}

resource "aws_subnet" "tfer--subnet-02b0abd37c610b7a7" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.1.0/25"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "RDS-Pvt-subnet-2"
  }

  tags_all = {
    Name = "RDS-Pvt-subnet-2"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0de40f141ee21d451_id}"
}

resource "aws_subnet" "tfer--subnet-0306e2be990c21612" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.11.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "프로젝트-subnet-private1-ap-northeast-2a"
  }

  tags_all = {
    Name = "프로젝트-subnet-private1-ap-northeast-2a"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0de40f141ee21d451_id}"
}

resource "aws_subnet" "tfer--subnet-03f28e0f19229777e" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.31.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "private-tools-subnet-2"
    Tier = "tools"
  }

  tags_all = {
    Name = "private-tools-subnet-2"
    Tier = "tools"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0bdd39fcd6bb58a01_id}"
}

resource "aws_subnet" "tfer--subnet-04f010b94cfdbb784" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.41.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "private-db-subnet-2"
    Tier = "db"
  }

  tags_all = {
    Name = "private-db-subnet-2"
    Tier = "db"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0bdd39fcd6bb58a01_id}"
}

resource "aws_subnet" "tfer--subnet-0730b302981780051" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.1.128/25"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "RDS-Pvt-subnet-3"
  }

  tags_all = {
    Name = "RDS-Pvt-subnet-3"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0de40f141ee21d451_id}"
}

resource "aws_subnet" "tfer--subnet-089a265f65c6375fd" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.30.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "private-tools-subnet-1"
    Tier = "tools"
  }

  tags_all = {
    Name = "private-tools-subnet-1"
    Tier = "tools"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0bdd39fcd6bb58a01_id}"
}

resource "aws_subnet" "tfer--subnet-0903460f869caf2a1" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.20.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name                                     = "프로젝트-subnet-public2-ap-northeast-2b"
    "kubernetes.io/cluster/eks-main-cluster" = "shared"
    "kubernetes.io/role/elb"                 = "1"
  }

  tags_all = {
    Name                                     = "프로젝트-subnet-public2-ap-northeast-2b"
    "kubernetes.io/cluster/eks-main-cluster" = "shared"
    "kubernetes.io/role/elb"                 = "1"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0de40f141ee21d451_id}"
}

resource "aws_subnet" "tfer--subnet-093933bc85139055a" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.10.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "public-web-subnet-1"
    Tier = "web"
  }

  tags_all = {
    Name = "public-web-subnet-1"
    Tier = "web"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0bdd39fcd6bb58a01_id}"
}

resource "aws_subnet" "tfer--subnet-097177aed7ae0d058" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.0.128/25"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "RDS-Pvt-subnet-1"
  }

  tags_all = {
    Name = "RDS-Pvt-subnet-1"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0de40f141ee21d451_id}"
}

resource "aws_subnet" "tfer--subnet-0a72c0cc2a24de619" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.11.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "public-web-subnet-2"
    Tier = "web"
  }

  tags_all = {
    Name = "public-web-subnet-2"
    Tier = "web"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0bdd39fcd6bb58a01_id}"
}

resource "aws_subnet" "tfer--subnet-0a9c6885766001f45" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.21.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "private-app-subnet-2"
    Tier = "app"
  }

  tags_all = {
    Name = "private-app-subnet-2"
    Tier = "app"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0bdd39fcd6bb58a01_id}"
}

resource "aws_subnet" "tfer--subnet-0b93fd2fbf05e632d" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.2.0/25"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "RDS-Pvt-subnet-4"
  }

  tags_all = {
    Name = "RDS-Pvt-subnet-4"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0de40f141ee21d451_id}"
}

resource "aws_subnet" "tfer--subnet-0c6188b8805f16a78" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.20.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "private-app-subnet-1"
    Tier = "app"
  }

  tags_all = {
    Name = "private-app-subnet-1"
    Tier = "app"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0bdd39fcd6bb58a01_id}"
}

resource "aws_subnet" "tfer--subnet-0f4e4a7709de6d42e" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "192.168.40.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "private-db-subnet-1"
    Tier = "db"
  }

  tags_all = {
    Name = "private-db-subnet-1"
    Tier = "db"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0bdd39fcd6bb58a01_id}"
}

resource "aws_subnet" "tfer--subnet-0f5f8ff62a2547366" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.0.21.0/24"
  enable_dns64                                   = "false"
  enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "ap-northeast-2"

  tags = {
    Name = "프로젝트-subnet-private2-ap-northeast-2b"
  }

  tags_all = {
    Name = "프로젝트-subnet-private2-ap-northeast-2b"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0de40f141ee21d451_id}"
}
