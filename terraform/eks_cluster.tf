# aws_eks_cluster.main:
resource "aws_eks_cluster" "main" {
    arn                           = "arn:aws:eks:ap-northeast-2:557690584596:cluster/eks-main-cluster"
    bootstrap_self_managed_addons = false
    certificate_authority         = [
        {
            data = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURCVENDQWUyZ0F3SUJBZ0lJQnd6bEthWU40ZkV3RFFZSktvWklodmNOQVFFTEJRQXdGVEVUTUJFR0ExVUUKQXhNS2EzVmlaWEp1WlhSbGN6QWVGdzB5TlRBMk1URXdOelUxTlROYUZ3MHpOVEEyTURrd09EQXdOVE5hTUJVeApFekFSQmdOVkJBTVRDbXQxWW1WeWJtVjBaWE13Z2dFaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQkR3QXdnZ0VLCkFvSUJBUURsTnovVjUxWGJxMWtvVThwZkxtUHhRS1R2YjFpL0V1RnR0aEYwa0J5RGZEUzR2bmtnM2l4OXlzd3YKckJoRjhkQ0xHaGJ6NGNkakhkODAzNU9PWmpIQTQ2b2ZrOHJXZ1U1ZVZqNi9rZDVQOEY0MGl3VjJuK2Vhb3dXSQpKOG84ZGcra0hmOUUyVHo5Nkt4T2pFOGFOR1g4MHZVOEM1eno5K2xMWFM2ZFQxUVBJWG9IWHArUmVjK2RabnpICmszYUtRQ2YzdzcweWsybDViOG9IYWVZL3YvL25EMFNmdTRoK3VraTlkNElMVm0wOWxPN2t1c3RGcUtnS1Axc0MKN2FwRm4zalJpam11c2JOYWxkNjUvZlQzRmROb3NzRXhFVUlOU2Nxb2VoRjg5MFR5VjhRM0x1REdhMUZROGxFTgpqRlMzekpXTk5McWtwZGl1bjlyL3p4NGtHVWc3QWdNQkFBR2pXVEJYTUE0R0ExVWREd0VCL3dRRUF3SUNwREFQCkJnTlZIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJUeTA3aUVrL1R2WXlxVTVzR0tzZkRWMDdtaUJEQVYKQmdOVkhSRUVEakFNZ2dwcmRXSmxjbTVsZEdWek1BMEdDU3FHU0liM0RRRUJDd1VBQTRJQkFRQndDWTRDQzA2YQpsbjJyajlLczdXZ0FqQjRjZTZGQ1RMVUgvMkxsQjJwQjhFQ21tTks3aWNMRFBHdjlYN1k4N0dHY1NFWS94TlFPCnNkMkdYNGZvMkEyeFByOHRFc3lLUzdvVm5hSHFXaEVNUmxhdG1TQ21oZ2pQeGMxYTJ5ZXJUcDZKc0YzaitrMWwKZjhUdXltaHRJZnI5RWpYb25GREVyZWl1Nk9BNWQyKy9KeWdsYTJMZkthQW9vZVdqRy9mb3MxWFhYRS9OVmNKdwpTZURxb0FyaXNmQ0xSRGhvODF3bnFvbEFXcDNyR2JJU1h4cDlXNERNOExoUCs2YmVrZXZtN0M4SSsvOS81ZWxPCkdYbHhxazFtbFo3cHpWREZpa3JYVEFIZ1FkNGxNbGZ4K0U1SFhSNElkWEdTUjljM1k2V0lRRHVCTDBMN1JNRFYKM0k0Uzd6WFdnN0FZCi0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"
        },
    ]
    created_at                    = "2025-06-11T07:56:34Z"
    enabled_cluster_log_types     = []
    endpoint                      = "https://010171D2685185C11EC2754DA76CB1CC.gr7.ap-northeast-2.eks.amazonaws.com"
    id                            = "eks-main-cluster"
    identity                      = [
        {
            oidc = [
                {
                    issuer = "https://oidc.eks.ap-northeast-2.amazonaws.com/id/010171D2685185C11EC2754DA76CB1CC"
                },
            ]
        },
    ]
    name                          = "eks-main-cluster"
    platform_version              = "eks.12"
    region                        = "ap-northeast-2"
    role_arn                      = "arn:aws:iam::557690584596:role/eksClusterRole"
    status                        = "ACTIVE"
    tags                          = {
        "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    }
    tags_all                      = {
        "alpha.eksctl.io/cluster-oidc-enabled" = "true"
    }
    version                       = "1.32"

    access_config {
        authentication_mode                         = "API_AND_CONFIG_MAP"
        bootstrap_cluster_creator_admin_permissions = true
    }

    kubernetes_network_config {
        ip_family         = "ipv4"
        service_ipv4_cidr = "172.20.0.0/16"

        elastic_load_balancing {
            enabled = false
        }
    }

    upgrade_policy {
        support_type = "EXTENDED"
    }

    vpc_config {
        cluster_security_group_id = "sg-07228607c522bd3f5"
        endpoint_private_access   = false
        endpoint_public_access    = true
        public_access_cidrs       = [
            "0.0.0.0/0",
        ]
        security_group_ids        = [
            "sg-005c10a884b11397e",
        ]
        subnet_ids                = [
            "subnet-00c246ce288c3cbf8",
            "subnet-0306e2be990c21612",
            "subnet-0903460f869caf2a1",
            "subnet-0f5f8ff62a2547366",
        ]
        vpc_id                    = "vpc-0de40f141ee21d451"
    }
}
