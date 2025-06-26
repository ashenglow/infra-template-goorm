resource "aws_iam_role" "tfer--33-role-wxyflmc6" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/service-role/AWSLambdaBasicExecutionRole-42d5a853-a80a-4aa2-a8bc-daba450a3cf0"]
  max_session_duration = "3600"
  name                 = "33-role-wxyflmc6"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "557690584596"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Sid": "CodePipelineTrustPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/service-role/AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline", "arn:aws:iam::557690584596:policy/service-role/CodePipeline-CodeBuild-ap-northeast-2-test11-pipeline", "arn:aws:iam::557690584596:policy/service-role/CodePipeline-CodeConnections-ap-northeast-2-test11-pipeline", "arn:aws:iam::557690584596:policy/service-role/CodePipeline-ECSDeploy-ap-northeast-2-test11-pipeline"]
  max_session_duration = "3600"
  name                 = "AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AWSReservedSSO_AdministratorAccess_44912c3fbef89122" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::557690584596:saml-provider/AWSSSO_501e7b49414855b8_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_AdministratorAccess_44912c3fbef89122"
  path                 = "/aws-reserved/sso.amazonaws.com/ap-northeast-2/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonEKS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon EKS to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEKS"
  path                 = "/aws-service-role/eks.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonEKSNodegroup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks-nodegroup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "This policy allows Amazon EKS to create and manage Nodegroups"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonEKSNodegroup"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEKSNodegroup"
  path                 = "/aws-service-role/eks-nodegroup.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonEMRServerless" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ops.emr-serverless.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonEMRServerlessServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonEMRServerless"
  path                 = "/aws-service-role/ops.emr-serverless.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonQDeveloper" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "q.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonQDeveloper"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonQDeveloper"
  path                 = "/aws-service-role/q.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonSSM" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Provides access to AWS Resources managed or used by Amazon SSM."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonSSMServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonSSM"
  path                 = "/aws-service-role/ssm.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonSSM_AccountDiscovery" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "accountdiscovery.ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSystemsManagerAccountDiscoveryServicePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonSSM_AccountDiscovery"
  path                 = "/aws-service-role/accountdiscovery.ssm.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonSageMakerNotebooks" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sagemaker.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "AWS SageMaker Notebooks Service Linked Role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonSageMakerNotebooksServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonSageMakerNotebooks"
  path                 = "/aws-service-role/sagemaker.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAutoScaling" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "autoscaling.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Default Service-Linked Role enables access to AWS Services and Resources used or managed by Auto Scaling"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAutoScaling"
  path                 = "/aws-service-role/autoscaling.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForBackup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "backup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSBackupServiceLinkedRolePolicyForBackup"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForBackup"
  path                 = "/aws-service-role/backup.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForClientVPN" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "clientvpn.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service Linked Role for Client VPN"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ClientVPNServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForClientVPN"
  path                 = "/aws-service-role/clientvpn.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForClientVPNConnections" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "clientvpn-connections.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service Linked Role for Client VPN connections"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ClientVPNServiceConnectionsRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForClientVPNConnections"
  path                 = "/aws-service-role/clientvpn-connections.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForCloudWatchEvents" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/CloudWatchEventsServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCloudWatchEvents"
  path                 = "/aws-service-role/events.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForComputeOptimizer" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "compute-optimizer.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows ComputeOptimizer to call AWS services and collect workload details on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/ComputeOptimizerServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForComputeOptimizer"
  path                 = "/aws-service-role/compute-optimizer.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForCostOptimizationHub" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cost-optimization-hub.bcm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Cost Optimization Hub to retrieve organization information and collect optimization-related data and metadata."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/CostOptimizationHubServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForCostOptimizationHub"
  path                 = "/aws-service-role/cost-optimization-hub.bcm.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForEC2Spot" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "spot.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Default EC2 Spot Service Linked Role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSEC2SpotServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForEC2Spot"
  path                 = "/aws-service-role/spot.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForECS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Policy to enable Amazon ECS to manage your EC2 instances and related resources."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForECS"
  path                 = "/aws-service-role/ecs.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForElasticLoadBalancing" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticloadbalancing.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows ELB to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForElasticLoadBalancing"
  path                 = "/aws-service-role/elasticloadbalancing.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForGlobalAccelerator" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "globalaccelerator.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Global Accelerator to call AWS services on customer's behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForGlobalAccelerator"
  path                 = "/aws-service-role/globalaccelerator.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForOrganizations" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "organizations.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForOrganizations"
  path                 = "/aws-service-role/organizations.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForRDS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon RDS to manage AWS resources on your behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForRDS"
  path                 = "/aws-service-role/rds.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForResourceExplorer" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "resource-explorer-2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSResourceExplorerServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForResourceExplorer"
  path                 = "/aws-service-role/resource-explorer-2.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSSMQuickSetup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm-quicksetup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/SSMQuickSetupRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSSMQuickSetup"
  path                 = "/aws-service-role/ssm-quicksetup.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSSO" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sso.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSSO"
  path                 = "/aws-service-role/sso.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForWellArchitected_Discovery" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "discovery.wellarchitected.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service Linked Role for Discovery Integrations"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSWellArchitectedDiscoveryServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForWellArchitected_Discovery"
  path                 = "/aws-service-role/discovery.wellarchitected.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AmazonEKSAutoClusterRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRole",
        "sts:TagSession"
      ],
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows access to other AWS service resources that are required to operate Auto Mode clusters managed by EKS."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKSBlockStoragePolicy", "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy", "arn:aws:iam::aws:policy/AmazonEKSComputePolicy", "arn:aws:iam::aws:policy/AmazonEKSLoadBalancingPolicy", "arn:aws:iam::aws:policy/AmazonEKSNetworkingPolicy"]
  max_session_duration = "3600"
  name                 = "AmazonEKSAutoClusterRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--AmazonEKSAutoNodeRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EKS nodes to connect to EKS Auto Mode clusters and to pull container images from ECR."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodeMinimalPolicy"]
  max_session_duration = "3600"
  name                 = "AmazonEKSAutoNodeRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--AmazonEKSNodeRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]
  max_session_duration = "3600"
  name                 = "AmazonEKSNodeRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--AmazonEKS_EBS_CSI_DriverRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-northeast-2.amazonaws.com/id/5282715D32205F4BDA978729756E5FE9:aud": "sts.amazonaws.com",
          "oidc.eks.ap-northeast-2.amazonaws.com/id/5282715D32205F4BDA978729756E5FE9:sub": "system:serviceaccount:kube-system:ebs-csi-controller-sa"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::557690584596:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/5282715D32205F4BDA978729756E5FE9"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"]
  max_session_duration = "3600"
  name                 = "AmazonEKS_EBS_CSI_DriverRole"
  path                 = "/"

  tags = {
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-micro"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "alpha.eksctl.io/iamserviceaccount-name"      = "kube-system/ebs-csi-controller-sa"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-micro"
  }

  tags_all = {
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-micro"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "alpha.eksctl.io/iamserviceaccount-name"      = "kube-system/ebs-csi-controller-sa"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-micro"
  }
}

resource "aws_iam_role" "tfer--AmazonSageMaker-ExecutionRole-20250408T173348" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sagemaker.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker execution role created from the SageMaker AWS Management Console."
  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/service-role/AmazonSageMaker-ExecutionPolicy-20250408T173348", "arn:aws:iam::aws:policy/AmazonSageMakerCanvasAIServicesAccess", "arn:aws:iam::aws:policy/AmazonSageMakerCanvasDataPrepFullAccess", "arn:aws:iam::aws:policy/AmazonSageMakerCanvasFullAccess", "arn:aws:iam::aws:policy/AmazonSageMakerCanvasSMDataScienceAssistantAccess", "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"]
  max_session_duration = "3600"
  name                 = "AmazonSageMaker-ExecutionRole-20250408T173348"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMaker-ExecutionRole-20250426T142016" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sagemaker.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker execution role created from the SageMaker AWS Management Console."
  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/service-role/AmazonSageMaker-ExecutionPolicy-20250426T142016", "arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/AmazonSageMakerCanvasAIServicesAccess", "arn:aws:iam::aws:policy/AmazonSageMakerCanvasDataPrepFullAccess", "arn:aws:iam::aws:policy/AmazonSageMakerCanvasFullAccess", "arn:aws:iam::aws:policy/AmazonSageMakerCanvasSMDataScienceAssistantAccess", "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"]
  max_session_duration = "3600"
  name                 = "AmazonSageMaker-ExecutionRole-20250426T142016"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerCanvasEMRSExecutionAccess-20250408T173347" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "557690584596"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "emr-serverless.amazonaws.com"
      },
      "Sid": "EMRServerlessTrustPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSageMakerCanvasEMRServerlessExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerCanvasEMRSExecutionAccess-20250408T173347"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerCanvasEMRSExecutionAccess-20250426T142015" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "557690584596"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "emr-serverless.amazonaws.com"
      },
      "Sid": "EMRServerlessTrustPolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSageMakerCanvasEMRServerlessExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerCanvasEMRSExecutionAccess-20250426T142015"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsApiGatewayRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "apigateway.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS ApiGateway within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsApiGatewayServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsApiGatewayRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsCloudformationRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudformation.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS CloudFormation within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsCloudformationServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsCloudformationRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsCodeBuildRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS CodeBuild within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSageMakerServiceCatalogProductsCodeBuildServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsCodeBuildRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsCodePipelineRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS CodePipeline within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsCodePipelineServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsCodePipelineRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsEventsRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS Events within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsEventsServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsEventsRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sagemaker.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS SageMaker within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsExecutionRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsFirehoseRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "firehose.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS Firehose within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsFirehoseServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsFirehoseRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsGlueRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS Glue within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsGlueServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsGlueRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsLambdaRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role will grant permissions required to use AWS Lambda within the Amazon SageMaker portfolio of products."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsLambdaServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsLambdaRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsLaunchRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "servicecatalog.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role has the permissions required to launch the Amazon SageMaker portfolio of products from AWS ServiceCatalog."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSageMakerAdmin-ServiceCatalogProductsServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsLaunchRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerServiceCatalogProductsUseRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "sagemaker.amazonaws.com",
          "codebuild.amazonaws.com",
          "glue.amazonaws.com",
          "lambda.amazonaws.com",
          "cloudformation.amazonaws.com",
          "apigateway.amazonaws.com",
          "states.amazonaws.com",
          "events.amazonaws.com",
          "codepipeline.amazonaws.com",
          "firehose.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "SageMaker role created from the SageMaker AWS Management Console. This role has the permissions required to use the Amazon SageMaker portfolio of products from AWS ServiceCatalog."
  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/service-role/AmazonSageMakerServiceCatalogProductsUseRole-20250408T173391"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerServiceCatalogProductsUseRole"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSagemakerCanvasBedrockRole-20250408T173347" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "557690584596"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "bedrock.amazonaws.com"
      },
      "Sid": "BedrockAssumeRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonSageMakerCanvasBedrockAccess"]
  max_session_duration = "3600"
  name                 = "AmazonSagemakerCanvasBedrockRole-20250408T173347"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTempla-CodeConnectionsActionRole-MYr05kANHKw9" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::557690584596:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodeConnectionsActionDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"codestar-connections:UseConnection\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codeconnections:ap-northeast-2:557690584596:connection/bd3e97c8-ad2d-4364-8842-59d40054c746\"},{\"Action\":[\"s3:Abort*\",\"s3:DeleteObject*\",\"s3:GetBucket*\",\"s3:GetObject*\",\"s3:List*\",\"s3:PutObject\",\"s3:PutObjectLegalHold\",\"s3:PutObjectRetention\",\"s3:PutObjectTagging\",\"s3:PutObjectVersionTagging\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e\",\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e/*\"]},{\"Action\":[\"s3:PutObjectAcl\",\"s3:PutObjectVersionAcl\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e/*\"}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTempla-CodeConnectionsActionRole-MYr05kANHKw9"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTempla-CodePipelineBuildActionRo-hxQ1upFjxbQP" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::557690584596:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodePipelineBuildActionRoleDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\",\"codebuild:StopBuild\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codebuild:ap-northeast-2:557690584596:project/DeployToEcsFargateProject-02ec8d16f6df\"}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTempla-CodePipelineBuildActionRo-hxQ1upFjxbQP"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTempla-CodePipelineDeployActionR-zlzuvtE7WmCu" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::557690584596:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodePipelineDeployActionRoleDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ecs:DescribeServices\",\"ecs:DescribeTaskDefinition\",\"ecs:DescribeTasks\",\"ecs:ListTasks\",\"ecs:RegisterTaskDefinition\",\"ecs:TagResource\",\"ecs:UpdateService\"],\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":\"iam:PassRole\",\"Condition\":{\"StringEqualsIfExists\":{\"iam:PassedToService\":[\"ec2.amazonaws.com\",\"ecs-tasks.amazonaws.com\"]}},\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"s3:GetBucket*\",\"s3:GetObject*\",\"s3:List*\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v\",\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v/*\"]},{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codepipeline/DeployToEcsFargateService\",\"arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codepipeline/DeployToEcsFargateService:*\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTempla-CodePipelineDeployActionR-zlzuvtE7WmCu"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTempla-CodePipelineSourceActionR-HMOrslzEll05" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::557690584596:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodePipelineSourceActionRoleDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"ecr:DescribeImages\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:ecr:ap-northeast-2:557690584596:repository/simple-docker-service-02d02aa84d8b\"},{\"Action\":[\"s3:Abort*\",\"s3:DeleteObject*\",\"s3:PutObject\",\"s3:PutObjectLegalHold\",\"s3:PutObjectRetention\",\"s3:PutObjectTagging\",\"s3:PutObjectVersionTagging\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v\",\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v/*\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTempla-CodePipelineSourceActionR-HMOrslzEll05"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTempla-TaskDefinitionExecutionRo-3mGopObz9jN3" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "TaskDefinitionExecutionRoleDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ecr:BatchCheckLayerAvailability\",\"ecr:BatchGetImage\",\"ecr:GetDownloadUrlForLayer\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:ecr:ap-northeast-2:557690584596:repository/simple-docker-service-02d02aa84d8b\"},{\"Action\":\"ecr:GetAuthorizationToken\",\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTempla-TaskDefinitionExecutionRo-3mGopObz9jN3"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTemplate--TaskDefinitionTaskRole-y1SQZpVrAWhU" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonECS_FullAccess"]
  max_session_duration = "3600"
  name                 = "CodePipelineStarterTemplate--TaskDefinitionTaskRole-y1SQZpVrAWhU"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTemplate-Deploy-CodePipelineRole-1ibfpOtMxJfA" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodePipelineRoleDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:Abort*\",\"s3:DeleteObject*\",\"s3:GetBucket*\",\"s3:GetObject*\",\"s3:List*\",\"s3:PutObject\",\"s3:PutObjectLegalHold\",\"s3:PutObjectRetention\",\"s3:PutObjectTagging\",\"s3:PutObjectVersionTagging\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v\",\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v/*\"]},{\"Action\":\"sts:AssumeRole\",\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::557690584596:role/CodePipelineStarterTempla-CodePipelineBuildActionRo-hxQ1upFjxbQP\",\"arn:aws:iam::557690584596:role/CodePipelineStarterTempla-CodePipelineDeployActionR-zlzuvtE7WmCu\",\"arn:aws:iam::557690584596:role/CodePipelineStarterTempla-CodePipelineSourceActionR-HMOrslzEll05\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTemplate-Deploy-CodePipelineRole-1ibfpOtMxJfA"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTemplate-Deploy-SourceEventsRole-JD4eSggAG63z" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "events.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "SourceEventsRoleDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"codepipeline:StartPipelineExecution\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codepipeline:ap-northeast-2:557690584596:DeployToEcsFargateService\"}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTemplate-Deploy-SourceEventsRole-JD4eSggAG63z"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTemplate-DeployToE-CodeBuildRole-CGA3ww1361s2" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodeBuildRoleDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codebuild/DeployToEcsFargateProject-02ec8d16f6df:*\",\"arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codebuild/DeployToEcsFargateProject-02ec8d16f6df\"]},{\"Action\":[\"codebuild:BatchPutCodeCoverages\",\"codebuild:BatchPutTestCases\",\"codebuild:CreateReport\",\"codebuild:CreateReportGroup\",\"codebuild:UpdateReport\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codebuild:ap-northeast-2:557690584596:report-group/DeployToEcsFargateProject-02ec8d16f6df-*\"},{\"Action\":[\"s3:Abort*\",\"s3:DeleteObject*\",\"s3:GetBucket*\",\"s3:GetObject*\",\"s3:List*\",\"s3:PutObject\",\"s3:PutObjectLegalHold\",\"s3:PutObjectRetention\",\"s3:PutObjectTagging\",\"s3:PutObjectVersionTagging\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v\",\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v/*\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTemplate-DeployToE-CodeBuildRole-CGA3ww1361s2"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTemplate-Pus-CodeBuildActionRole-pmUCVw4D99Vf" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::557690584596:root"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodeBuildActionDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"codebuild:BatchGetBuilds\",\"codebuild:StartBuild\",\"codebuild:StopBuild\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codebuild:ap-northeast-2:557690584596:project/SimpleDockerProject-02d02aa84d8b\"}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTemplate-Pus-CodeBuildActionRole-pmUCVw4D99Vf"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTemplate-PushTo-CodePipelineRole-C7etDSzNg2Fr" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodePipelineDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:Abort*\",\"s3:DeleteObject*\",\"s3:GetBucket*\",\"s3:GetObject*\",\"s3:List*\",\"s3:PutObject\",\"s3:PutObjectLegalHold\",\"s3:PutObjectRetention\",\"s3:PutObjectTagging\",\"s3:PutObjectVersionTagging\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e\",\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e/*\"]},{\"Action\":\"sts:AssumeRole\",\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:iam::557690584596:role/CodePipelineStarterTemplate-Pus-CodeBuildActionRole-pmUCVw4D99Vf\",\"arn:aws:iam::557690584596:role/CodePipelineStarterTempla-CodeConnectionsActionRole-MYr05kANHKw9\"]},{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codepipeline/SimpleDockerService\",\"arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codepipeline/SimpleDockerService:*\"]}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTemplate-PushTo-CodePipelineRole-C7etDSzNg2Fr"
  path                 = "/"
}

resource "aws_iam_role" "tfer--CodePipelineStarterTemplate-PushToECR-CodeBuildRole-qeP3styRS4R1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "CodeBuildDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codebuild/SimpleDockerProject-02d02aa84d8b:*\",\"arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codebuild/SimpleDockerProject-02d02aa84d8b\"]},{\"Action\":[\"codebuild:BatchPutCodeCoverages\",\"codebuild:BatchPutTestCases\",\"codebuild:CreateReport\",\"codebuild:CreateReportGroup\",\"codebuild:UpdateReport\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codebuild:ap-northeast-2:557690584596:report-group/SimpleDockerProject-02d02aa84d8b-*\"},{\"Action\":[\"s3:GetBucket*\",\"s3:GetObject*\",\"s3:List*\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e\",\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e/*\"]}]}"
  }

  inline_policy {
    name   = "CodeBuildProjectRoleDefaultPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codebuild/SimpleDockerProject-02d02aa84d8b\",\"arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codebuild/SimpleDockerProject-02d02aa84d8b:*\"]},{\"Action\":[\"codebuild:BatchPutCodeCoverages\",\"codebuild:BatchPutTestCases\",\"codebuild:CreateReport\",\"codebuild:CreateReportGroup\",\"codebuild:UpdateReport\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:codebuild:ap-northeast-2:557690584596:report-group/SimpleDockerProject-02d02aa84d8b-*\"},{\"Action\":[\"s3:GetBucket*\",\"s3:GetObject*\",\"s3:List*\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e\",\"arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e/*\"]},{\"Action\":[\"ecr:BatchCheckLayerAvailability\",\"ecr:CompleteLayerUpload\",\"ecr:InitiateLayerUpload\",\"ecr:PutImage\",\"ecr:UploadLayerPart\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:ecr:ap-northeast-2:557690584596:repository/simple-docker-service-02d02aa84d8b\"},{\"Action\":\"ecr:GetAuthorizationToken\",\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  max_session_duration = "3600"
  name                 = "CodePipelineStarterTemplate-PushToECR-CodeBuildRole-qeP3styRS4R1"
  path                 = "/"
}

resource "aws_iam_role" "tfer--NotifySlackBillingAlert-role-e2aihmph" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/service-role/AWSLambdaBasicExecutionRole-f28814b5-4208-4b83-91c1-1e7e2f9a7634", "arn:aws:iam::aws:policy/AmazonSNSFullAccess"]
  max_session_duration = "3600"
  name                 = "NotifySlackBillingAlert-role-e2aihmph"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--NotifySlackBillingAlert-role-iw063w55" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/service-role/AWSLambdaBasicExecutionRole-0ee62b7e-9f04-421f-b73a-7c1377a5677c", "arn:aws:iam::aws:policy/AmazonSNSFullAccess"]
  max_session_duration = "3600"
  name                 = "NotifySlackBillingAlert-role-iw063w55"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--OTT-Patch-Lambda-Role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/OTT-Patch-SNS-Policy", "arn:aws:iam::557690584596:policy/OTT-Patch-SSM-Policy", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "OTT-Patch-Lambda-Role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--OTT-SSM-Service-Role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/OTT-Patch-SNS-Policy"]
  max_session_duration = "3600"
  name                 = "OTT-SSM-Service-Role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--SSM-SNS-Notification-Role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ssm.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "SSM-SNS-Publish-Policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"sns:Publish\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  max_session_duration = "3600"
  name                 = "SSM-SNS-Notification-Role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ai-line-role-4ylui19j" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/service-role/AWSLambdaBasicExecutionRole-ca6a8359-f0a2-4ac9-a9a8-d8cdf4a6af4f"]
  max_session_duration = "3600"
  name                 = "ai-line-role-4ylui19j"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--ailine-role-kza4frah" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "123"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:DeleteAccessGrant\",\"s3:PauseReplication\",\"s3:PutAnalyticsConfiguration\",\"s3:PutAccessPointConfigurationForObjectLambda\",\"s3:PutStorageLensConfiguration\",\"s3:DeleteAccessPoint\",\"s3:CreateBucket\",\"s3:CreateBucketMetadataTableConfiguration\",\"s3:DeleteAccessPointForObjectLambda\",\"s3:ReplicateObject\",\"s3:DeleteBucketWebsite\",\"s3:DissociateAccessGrantsIdentityCenter\",\"s3:PutLifecycleConfiguration\",\"s3:DeleteObject\",\"s3:CreateMultiRegionAccessPoint\",\"s3:DeleteAccessGrantsInstanceResourcePolicy\",\"s3:PutReplicationConfiguration\",\"s3:PutObjectLegalHold\",\"s3:InitiateReplication\",\"s3:PutBucketCORS\",\"s3:PutObject\",\"s3:PutBucketNotification\",\"s3:PutBucketLogging\",\"s3:CreateAccessGrant\",\"s3:PutBucketObjectLockConfiguration\",\"s3:CreateJob\",\"s3:DeleteBucketMetadataTableConfiguration\",\"s3:CreateAccessPoint\",\"s3:PutAccelerateConfiguration\",\"s3:SubmitMultiRegionAccessPointRoutes\",\"s3:CreateAccessGrantsLocation\",\"s3:DeleteObjectVersion\",\"s3:RestoreObject\",\"s3:DeleteAccessGrantsLocation\",\"s3:PutEncryptionConfiguration\",\"s3:DeleteAccessGrantsInstance\",\"s3:AbortMultipartUpload\",\"s3:AssociateAccessGrantsIdentityCenter\",\"s3:DeleteStorageLensGroup\",\"s3:UpdateJobPriority\",\"s3:DeleteBucket\",\"s3:PutBucketVersioning\",\"s3:PutIntelligentTieringConfiguration\",\"s3:*\",\"s3:UpdateStorageLensGroup\",\"s3:PutMetricsConfiguration\",\"s3:CreateStorageLensGroup\",\"s3:DeleteMultiRegionAccessPoint\",\"s3:UpdateJobStatus\",\"s3:CreateAccessGrantsInstance\",\"s3:PutInventoryConfiguration\",\"s3:DeleteStorageLensConfiguration\",\"s3:PutBucketWebsite\",\"s3:PutBucketRequestPayment\",\"s3:PutObjectRetention\",\"s3:CreateAccessPointForObjectLambda\",\"s3:UpdateAccessGrantsLocation\",\"s3:PutAccessGrantsInstanceResourcePolicy\",\"s3:ReplicateDelete\"],\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/service-role/AWSLambdaBasicExecutionRole-1404c6c8-0dac-469f-b999-224f737a94e0", "arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "ailine-role-kza4frah"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--aws-backup-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "backup.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup", "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForRestores"]
  max_session_duration = "3600"
  name                 = "aws-backup-service-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--codebuild-flask-app-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/service-role/CodeBuildBasePolicy-flask-app-ap-northeast-2", "arn:aws:iam::557690584596:policy/service-role/CodeBuildSecretsManagerSourceCredentialsPolicy-flask-app-build-ap-northeast-2", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser", "arn:aws:iam::aws:policy/AmazonECS_FullAccess", "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"]
  max_session_duration = "3600"
  name                 = "codebuild-flask-app-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--codebuild-test11-service-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/service-role/CodeBuildBasePolicy-test11-ap-northeast-2", "arn:aws:iam::557690584596:policy/service-role/CodeBuildCodeConnectionsSourceCredentialsPolicy-test11-build-ap-northeast-2-557690584596", "arn:aws:iam::557690584596:policy/service-role/CodeBuildSecretsManagerSourceCredentialsPolicy-test11-build-ap-northeast-2", "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser", "arn:aws:iam::aws:policy/AmazonECS_FullAccess", "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"]
  max_session_duration = "3600"
  name                 = "codebuild-test11-service-role"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--ec2-ami-msa" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore", "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"]
  max_session_duration = "3600"
  name                 = "ec2-ami-msa"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ec2-rds-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows EC2 instances to call AWS services on your behalf."

  inline_policy {
    name   = "TestRDSAccess"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"rds-db:connect\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:rds-db:ap-northeast-2:*:dbuser:*/*\"]}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonRDSFullAccess"]
  max_session_duration = "3600"
  name                 = "ec2-rds-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ecsInstanceRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"]
  max_session_duration = "3600"
  name                 = "ecsInstanceRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ecsTaskExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "AllowECSExecSSM"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ssmmessages:*\",\"ssm:UpdateInstanceInformation\",\"ec2messages:*\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "ecsTaskExecutionRole"
  path                 = "/"
}

resource "aws_iam_role" "tfer--eksAdminRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows EC2 instances to call AWS services on your behalf."

  inline_policy {
    name   = "EKSClusterPassRole"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"iam:PassRole\",\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  inline_policy {
    name   = "eksAdminFullAccessPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"eks:*\",\"cloudformation:*\",\"autoscaling:*\",\"ec2:Describe*\",\"iam:PassRole\",\"iam:GetRole\",\"iam:ListRoles\",\"iam:ListAttachedRolePolicies\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AWSCloudFormationFullAccess", "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess", "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy", "arn:aws:iam::aws:policy/AmazonEKSServicePolicy", "arn:aws:iam::aws:policy/AmazonSSMFullAccess", "arn:aws:iam::aws:policy/AutoScalingFullAccess", "arn:aws:iam::aws:policy/CloudWatchLogsReadOnlyAccess", "arn:aws:iam::aws:policy/IAMFullAccess"]
  max_session_duration = "3600"
  name                 = "eksAdminRole"
  path                 = "/"

  tags = {
    service = "eks-admin"
  }

  tags_all = {
    service = "eks-admin"
  }
}

resource "aws_iam_role" "tfer--eksClusterRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows the cluster Kubernetes control plane to manage AWS resources on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"]
  max_session_duration = "3600"
  name                 = "eksClusterRole"
  path                 = "/"

  tags = {
    service = "eks-cluster"
  }

  tags_all = {
    service = "eks-cluster"
  }
}

resource "aws_iam_role" "tfer--eksNodeGroupRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]
  max_session_duration = "3600"
  name                 = "eksNodeGroupRole"
  path                 = "/"

  tags = {
    service = "eks-nodegroup"
  }

  tags_all = {
    service = "eks-nodegroup"
  }
}

resource "aws_iam_role" "tfer--eksctl-eks-main-cluster-addon-iamserviceaccou-Role1-Merfza9PpCEh" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-northeast-2.amazonaws.com/id/010171D2685185C11EC2754DA76CB1CC:aud": "sts.amazonaws.com",
          "oidc.eks.ap-northeast-2.amazonaws.com/id/010171D2685185C11EC2754DA76CB1CC:sub": "system:serviceaccount:external-secrets:external-secrets-sa"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::557690584596:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/010171D2685185C11EC2754DA76CB1CC"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/SecretsManagerReadWrite"]
  max_session_duration = "3600"
  name                 = "eksctl-eks-main-cluster-addon-iamserviceaccou-Role1-Merfza9PpCEh"
  path                 = "/"

  tags = {
    "alpha.eksctl.io/cluster-name"                = "eks-main-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.210.0"
    "alpha.eksctl.io/iamserviceaccount-name"      = "external-secrets/external-secrets-sa"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "eks-main-cluster"
    irsa                                          = "secret-manager"
  }

  tags_all = {
    "alpha.eksctl.io/cluster-name"                = "eks-main-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.210.0"
    "alpha.eksctl.io/iamserviceaccount-name"      = "external-secrets/external-secrets-sa"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "eks-main-cluster"
    irsa                                          = "secret-manager"
  }
}

resource "aws_iam_role" "tfer--eksctl-eks-main-cluster-addon-iamserviceaccou-Role1-kpJG6ihdLZw7" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-northeast-2.amazonaws.com/id/010171D2685185C11EC2754DA76CB1CC:aud": "sts.amazonaws.com",
          "oidc.eks.ap-northeast-2.amazonaws.com/id/010171D2685185C11EC2754DA76CB1CC:sub": "system:serviceaccount:kube-system:external-secrets-sa"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::557690584596:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/010171D2685185C11EC2754DA76CB1CC"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/eks-secrets-access-policy"]
  max_session_duration = "3600"
  name                 = "eksctl-eks-main-cluster-addon-iamserviceaccou-Role1-kpJG6ihdLZw7"
  path                 = "/"

  tags = {
    "alpha.eksctl.io/cluster-name"                = "eks-main-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.210.0"
    "alpha.eksctl.io/iamserviceaccount-name"      = "kube-system/external-secrets-sa"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "eks-main-cluster"
  }

  tags_all = {
    "alpha.eksctl.io/cluster-name"                = "eks-main-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.210.0"
    "alpha.eksctl.io/iamserviceaccount-name"      = "kube-system/external-secrets-sa"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "eks-main-cluster"
  }
}

resource "aws_iam_role" "tfer--eksctl-eks-main-cluster-addon-iamserviceaccou-Role1-nckStJ31DnsL" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-northeast-2.amazonaws.com/id/010171D2685185C11EC2754DA76CB1CC:aud": "sts.amazonaws.com",
          "oidc.eks.ap-northeast-2.amazonaws.com/id/010171D2685185C11EC2754DA76CB1CC:sub": "system:serviceaccount:kube-system:aws-load-balancer-controller"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::557690584596:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/010171D2685185C11EC2754DA76CB1CC"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/aws-load-balancer-controller"]
  max_session_duration = "3600"
  name                 = "eksctl-eks-main-cluster-addon-iamserviceaccou-Role1-nckStJ31DnsL"
  path                 = "/"

  tags = {
    "alpha.eksctl.io/cluster-name"                = "eks-main-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.210.0"
    "alpha.eksctl.io/iamserviceaccount-name"      = "kube-system/aws-load-balancer-controller"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "eks-main-cluster"
  }

  tags_all = {
    "alpha.eksctl.io/cluster-name"                = "eks-main-cluster"
    "alpha.eksctl.io/eksctl-version"              = "0.210.0"
    "alpha.eksctl.io/iamserviceaccount-name"      = "kube-system/aws-load-balancer-controller"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "eks-main-cluster"
  }
}

resource "aws_iam_role" "tfer--eksctl-watcha-clone-cluster-cluster-ServiceRole-shyZdwGYDESz" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRole",
        "sts:TagSession"
      ],
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy", "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"]
  max_session_duration = "3600"
  name                 = "eksctl-watcha-clone-cluster-cluster-ServiceRole-shyZdwGYDESz"
  path                 = "/"

  tags = {
    Name                                          = "eksctl-watcha-clone-cluster-cluster/ServiceRole"
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-cluster"
  }

  tags_all = {
    Name                                          = "eksctl-watcha-clone-cluster-cluster/ServiceRole"
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-cluster"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-cluster"
  }
}

resource "aws_iam_role" "tfer--eksctl-watcha-clone-micro-addon-vpc-cni-Role1-3ZdqtmjgFbrS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.ap-northeast-2.amazonaws.com/id/5282715D32205F4BDA978729756E5FE9:aud": "sts.amazonaws.com",
          "oidc.eks.ap-northeast-2.amazonaws.com/id/5282715D32205F4BDA978729756E5FE9:sub": "system:serviceaccount:kube-system:aws-node"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::557690584596:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/5282715D32205F4BDA978729756E5FE9"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"]
  max_session_duration = "3600"
  name                 = "eksctl-watcha-clone-micro-addon-vpc-cni-Role1-3ZdqtmjgFbrS"
  path                 = "/"

  tags = {
    "alpha.eksctl.io/addon-name"                  = "vpc-cni"
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-micro"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-micro"
  }

  tags_all = {
    "alpha.eksctl.io/addon-name"                  = "vpc-cni"
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-micro"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-micro"
  }
}

resource "aws_iam_role" "tfer--eksctl-watcha-clone-micro-cluster-ServiceRole-sjt18q3FOaeZ" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRole",
        "sts:TagSession"
      ],
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEKSClusterPolicy", "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"]
  max_session_duration = "3600"
  name                 = "eksctl-watcha-clone-micro-cluster-ServiceRole-sjt18q3FOaeZ"
  path                 = "/"

  tags = {
    Name                                          = "eksctl-watcha-clone-micro-cluster/ServiceRole"
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-micro"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-micro"
  }

  tags_all = {
    Name                                          = "eksctl-watcha-clone-micro-cluster/ServiceRole"
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-micro"
    "alpha.eksctl.io/cluster-oidc-enabled"        = "true"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-micro"
  }
}

resource "aws_iam_role" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-HqkIZpLkG6R3" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"]
  max_session_duration = "3600"
  name                 = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-HqkIZpLkG6R3"
  path                 = "/"

  tags = {
    Name                                          = "eksctl-watcha-clone-micro-nodegroup-watcha-medium-ng/NodeInstanceRole"
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-micro"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "alpha.eksctl.io/nodegroup-name"              = "watcha-medium-ng"
    "alpha.eksctl.io/nodegroup-type"              = "managed"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-micro"
  }

  tags_all = {
    Name                                          = "eksctl-watcha-clone-micro-nodegroup-watcha-medium-ng/NodeInstanceRole"
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-micro"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "alpha.eksctl.io/nodegroup-name"              = "watcha-medium-ng"
    "alpha.eksctl.io/nodegroup-type"              = "managed"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-micro"
  }
}

resource "aws_iam_role" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-bUOULRc5A1fn" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"]
  max_session_duration = "3600"
  name                 = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-bUOULRc5A1fn"
  path                 = "/"

  tags = {
    Name                                          = "eksctl-watcha-clone-micro-nodegroup-watcha-small-ng/NodeInstanceRole"
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-micro"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "alpha.eksctl.io/nodegroup-name"              = "watcha-small-ng"
    "alpha.eksctl.io/nodegroup-type"              = "managed"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-micro"
  }

  tags_all = {
    Name                                          = "eksctl-watcha-clone-micro-nodegroup-watcha-small-ng/NodeInstanceRole"
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-micro"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "alpha.eksctl.io/nodegroup-name"              = "watcha-small-ng"
    "alpha.eksctl.io/nodegroup-type"              = "managed"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-micro"
  }
}

resource "aws_iam_role" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-gXEOGVmkih7B" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly", "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy", "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"]
  max_session_duration = "3600"
  name                 = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-gXEOGVmkih7B"
  path                 = "/"

  tags = {
    Name                                          = "eksctl-watcha-clone-micro-nodegroup-watcha-micro-ng/NodeInstanceRole"
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-micro"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "alpha.eksctl.io/nodegroup-name"              = "watcha-micro-ng"
    "alpha.eksctl.io/nodegroup-type"              = "managed"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-micro"
  }

  tags_all = {
    Name                                          = "eksctl-watcha-clone-micro-nodegroup-watcha-micro-ng/NodeInstanceRole"
    "alpha.eksctl.io/cluster-name"                = "watcha-clone-micro"
    "alpha.eksctl.io/eksctl-version"              = "0.207.0"
    "alpha.eksctl.io/nodegroup-name"              = "watcha-micro-ng"
    "alpha.eksctl.io/nodegroup-type"              = "managed"
    "eksctl.cluster.k8s.io/v1alpha1/cluster-name" = "watcha-clone-micro"
  }
}

resource "aws_iam_role" "tfer--lambda-patch-workflow-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "PatchWorkflowPolicy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"logs:CreateLogGroup\",\"logs:CreateLogStream\",\"logs:PutLogEvents\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:logs:*:*:*\"},{\"Action\":[\"ssm:DescribeMaintenanceWindows\",\"ssm:DescribeMaintenanceWindowTasks\",\"ssm:DescribeMaintenanceWindowTargets\",\"ssm:SendCommand\"],\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"ec2:DescribeInstances\",\"ec2:DescribeTags\"],\"Effect\":\"Allow\",\"Resource\":\"*\"},{\"Action\":[\"sns:Publish\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:sns:ap-northeast-2:557690584596:OTT-Patch-Notifications\"},{\"Action\":[\"iam:PassRole\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:iam::557690584596:role/OTT-SSM-Service-Role\"},{\"Action\":[\"ssm:ListCommandInvocations\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
  max_session_duration = "3600"
  name                 = "lambda-patch-workflow-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rds-monitoring-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "monitoring.rds.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"]
  max_session_duration = "3600"
  name                 = "rds-monitoring-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--s3-result-role-itu92xm0" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::557690584596:policy/service-role/AWSLambdaBasicExecutionRole-5211d024-87ca-44b8-a131-ed6ea5bee473"]
  max_session_duration = "3600"
  name                 = "s3-result-role-itu92xm0"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--spark-cluster-s3-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "spark-cluster-s3-role"
  path                 = "/"
}
