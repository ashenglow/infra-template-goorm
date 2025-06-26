resource "aws_iam_role_policy" "tfer--CodePipelineStarterTempla-CodeConnectionsActionRole-MYr05kANHKw9_CodeConnectionsActionDefaultPolicy" {
  name = "CodeConnectionsActionDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "codestar-connections:UseConnection",
      "Effect": "Allow",
      "Resource": "arn:aws:codeconnections:ap-northeast-2:557690584596:connection/bd3e97c8-ad2d-4364-8842-59d40054c746"
    },
    {
      "Action": [
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*",
        "s3:PutObject",
        "s3:PutObjectLegalHold",
        "s3:PutObjectRetention",
        "s3:PutObjectTagging",
        "s3:PutObjectVersionTagging"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e",
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e/*"
      ]
    },
    {
      "Action": [
        "s3:PutObjectAcl",
        "s3:PutObjectVersionAcl"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTempla-CodeConnectionsActionRole-MYr05kANHKw9"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTempla-CodePipelineBuildActionRo-hxQ1upFjxbQP_CodePipelineBuildActionRoleDefaultPolicy" {
  name = "CodePipelineBuildActionRoleDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:StopBuild"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:codebuild:ap-northeast-2:557690584596:project/DeployToEcsFargateProject-02ec8d16f6df"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTempla-CodePipelineBuildActionRo-hxQ1upFjxbQP"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTempla-CodePipelineDeployActionR-zlzuvtE7WmCu_CodePipelineDeployActionRoleDefaultPolicy" {
  name = "CodePipelineDeployActionRoleDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecs:DescribeServices",
        "ecs:DescribeTaskDefinition",
        "ecs:DescribeTasks",
        "ecs:ListTasks",
        "ecs:RegisterTaskDefinition",
        "ecs:TagResource",
        "ecs:UpdateService"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringEqualsIfExists": {
          "iam:PassedToService": [
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v",
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v/*"
      ]
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codepipeline/DeployToEcsFargateService",
        "arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codepipeline/DeployToEcsFargateService:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTempla-CodePipelineDeployActionR-zlzuvtE7WmCu"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTempla-CodePipelineSourceActionR-HMOrslzEll05_CodePipelineSourceActionRoleDefaultPolicy" {
  name = "CodePipelineSourceActionRoleDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "ecr:DescribeImages",
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:ap-northeast-2:557690584596:repository/simple-docker-service-02d02aa84d8b"
    },
    {
      "Action": [
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:PutObject",
        "s3:PutObjectLegalHold",
        "s3:PutObjectRetention",
        "s3:PutObjectTagging",
        "s3:PutObjectVersionTagging"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v",
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTempla-CodePipelineSourceActionR-HMOrslzEll05"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTempla-TaskDefinitionExecutionRo-3mGopObz9jN3_TaskDefinitionExecutionRoleDefaultPolicy" {
  name = "TaskDefinitionExecutionRoleDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchGetImage",
        "ecr:GetDownloadUrlForLayer"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:ap-northeast-2:557690584596:repository/simple-docker-service-02d02aa84d8b"
    },
    {
      "Action": "ecr:GetAuthorizationToken",
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTempla-TaskDefinitionExecutionRo-3mGopObz9jN3"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTemplate-Deploy-CodePipelineRole-1ibfpOtMxJfA_CodePipelineRoleDefaultPolicy" {
  name = "CodePipelineRoleDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*",
        "s3:PutObject",
        "s3:PutObjectLegalHold",
        "s3:PutObjectRetention",
        "s3:PutObjectTagging",
        "s3:PutObjectVersionTagging"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v",
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v/*"
      ]
    },
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::557690584596:role/CodePipelineStarterTempla-CodePipelineBuildActionRo-hxQ1upFjxbQP",
        "arn:aws:iam::557690584596:role/CodePipelineStarterTempla-CodePipelineDeployActionR-zlzuvtE7WmCu",
        "arn:aws:iam::557690584596:role/CodePipelineStarterTempla-CodePipelineSourceActionR-HMOrslzEll05"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTemplate-Deploy-CodePipelineRole-1ibfpOtMxJfA"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTemplate-Deploy-SourceEventsRole-JD4eSggAG63z_SourceEventsRoleDefaultPolicy" {
  name = "SourceEventsRoleDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "codepipeline:StartPipelineExecution",
      "Effect": "Allow",
      "Resource": "arn:aws:codepipeline:ap-northeast-2:557690584596:DeployToEcsFargateService"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTemplate-Deploy-SourceEventsRole-JD4eSggAG63z"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTemplate-DeployToE-CodeBuildRole-CGA3ww1361s2_CodeBuildRoleDefaultPolicy" {
  name = "CodeBuildRoleDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codebuild/DeployToEcsFargateProject-02ec8d16f6df:*",
        "arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codebuild/DeployToEcsFargateProject-02ec8d16f6df"
      ]
    },
    {
      "Action": [
        "codebuild:BatchPutCodeCoverages",
        "codebuild:BatchPutTestCases",
        "codebuild:CreateReport",
        "codebuild:CreateReportGroup",
        "codebuild:UpdateReport"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:codebuild:ap-northeast-2:557690584596:report-group/DeployToEcsFargateProject-02ec8d16f6df-*"
    },
    {
      "Action": [
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*",
        "s3:PutObject",
        "s3:PutObjectLegalHold",
        "s3:PutObjectRetention",
        "s3:PutObjectTagging",
        "s3:PutObjectVersionTagging"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v",
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-tizvj8rpxe4v/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTemplate-DeployToE-CodeBuildRole-CGA3ww1361s2"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTemplate-Pus-CodeBuildActionRole-pmUCVw4D99Vf_CodeBuildActionDefaultPolicy" {
  name = "CodeBuildActionDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "codebuild:BatchGetBuilds",
        "codebuild:StartBuild",
        "codebuild:StopBuild"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:codebuild:ap-northeast-2:557690584596:project/SimpleDockerProject-02d02aa84d8b"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTemplate-Pus-CodeBuildActionRole-pmUCVw4D99Vf"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTemplate-PushTo-CodePipelineRole-C7etDSzNg2Fr_CodePipelineDefaultPolicy" {
  name = "CodePipelineDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:Abort*",
        "s3:DeleteObject*",
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*",
        "s3:PutObject",
        "s3:PutObjectLegalHold",
        "s3:PutObjectRetention",
        "s3:PutObjectTagging",
        "s3:PutObjectVersionTagging"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e",
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e/*"
      ]
    },
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::557690584596:role/CodePipelineStarterTemplate-Pus-CodeBuildActionRole-pmUCVw4D99Vf",
        "arn:aws:iam::557690584596:role/CodePipelineStarterTempla-CodeConnectionsActionRole-MYr05kANHKw9"
      ]
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codepipeline/SimpleDockerService",
        "arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codepipeline/SimpleDockerService:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTemplate-PushTo-CodePipelineRole-C7etDSzNg2Fr"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTemplate-PushToECR-CodeBuildRole-qeP3styRS4R1_CodeBuildDefaultPolicy" {
  name = "CodeBuildDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codebuild/SimpleDockerProject-02d02aa84d8b:*",
        "arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codebuild/SimpleDockerProject-02d02aa84d8b"
      ]
    },
    {
      "Action": [
        "codebuild:BatchPutCodeCoverages",
        "codebuild:BatchPutTestCases",
        "codebuild:CreateReport",
        "codebuild:CreateReportGroup",
        "codebuild:UpdateReport"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:codebuild:ap-northeast-2:557690584596:report-group/SimpleDockerProject-02d02aa84d8b-*"
    },
    {
      "Action": [
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e",
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTemplate-PushToECR-CodeBuildRole-qeP3styRS4R1"
}

resource "aws_iam_role_policy" "tfer--CodePipelineStarterTemplate-PushToECR-CodeBuildRole-qeP3styRS4R1_CodeBuildProjectRoleDefaultPolicy" {
  name = "CodeBuildProjectRoleDefaultPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codebuild/SimpleDockerProject-02d02aa84d8b",
        "arn:aws:logs:ap-northeast-2:557690584596:log-group:/aws/codebuild/SimpleDockerProject-02d02aa84d8b:*"
      ]
    },
    {
      "Action": [
        "codebuild:BatchPutCodeCoverages",
        "codebuild:BatchPutTestCases",
        "codebuild:CreateReport",
        "codebuild:CreateReportGroup",
        "codebuild:UpdateReport"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:codebuild:ap-northeast-2:557690584596:report-group/SimpleDockerProject-02d02aa84d8b-*"
    },
    {
      "Action": [
        "s3:GetBucket*",
        "s3:GetObject*",
        "s3:List*"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e",
        "arn:aws:s3:::codepipelinestartertempla-codepipelineartifactsbuc-4ez8tacxuk9e/*"
      ]
    },
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:CompleteLayerUpload",
        "ecr:InitiateLayerUpload",
        "ecr:PutImage",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:ecr:ap-northeast-2:557690584596:repository/simple-docker-service-02d02aa84d8b"
    },
    {
      "Action": "ecr:GetAuthorizationToken",
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "CodePipelineStarterTemplate-PushToECR-CodeBuildRole-qeP3styRS4R1"
}

resource "aws_iam_role_policy" "tfer--SSM-SNS-Notification-Role_SSM-SNS-Publish-Policy" {
  name = "SSM-SNS-Publish-Policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sns:Publish"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "SSM-SNS-Notification-Role"
}

resource "aws_iam_role_policy" "tfer--ailine-role-kza4frah_123" {
  name = "123"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:DeleteAccessGrant",
        "s3:PauseReplication",
        "s3:PutAnalyticsConfiguration",
        "s3:PutAccessPointConfigurationForObjectLambda",
        "s3:PutStorageLensConfiguration",
        "s3:DeleteAccessPoint",
        "s3:CreateBucket",
        "s3:CreateBucketMetadataTableConfiguration",
        "s3:DeleteAccessPointForObjectLambda",
        "s3:ReplicateObject",
        "s3:DeleteBucketWebsite",
        "s3:DissociateAccessGrantsIdentityCenter",
        "s3:PutLifecycleConfiguration",
        "s3:DeleteObject",
        "s3:CreateMultiRegionAccessPoint",
        "s3:DeleteAccessGrantsInstanceResourcePolicy",
        "s3:PutReplicationConfiguration",
        "s3:PutObjectLegalHold",
        "s3:InitiateReplication",
        "s3:PutBucketCORS",
        "s3:PutObject",
        "s3:PutBucketNotification",
        "s3:PutBucketLogging",
        "s3:CreateAccessGrant",
        "s3:PutBucketObjectLockConfiguration",
        "s3:CreateJob",
        "s3:DeleteBucketMetadataTableConfiguration",
        "s3:CreateAccessPoint",
        "s3:PutAccelerateConfiguration",
        "s3:SubmitMultiRegionAccessPointRoutes",
        "s3:CreateAccessGrantsLocation",
        "s3:DeleteObjectVersion",
        "s3:RestoreObject",
        "s3:DeleteAccessGrantsLocation",
        "s3:PutEncryptionConfiguration",
        "s3:DeleteAccessGrantsInstance",
        "s3:AbortMultipartUpload",
        "s3:AssociateAccessGrantsIdentityCenter",
        "s3:DeleteStorageLensGroup",
        "s3:UpdateJobPriority",
        "s3:DeleteBucket",
        "s3:PutBucketVersioning",
        "s3:PutIntelligentTieringConfiguration",
        "s3:*",
        "s3:UpdateStorageLensGroup",
        "s3:PutMetricsConfiguration",
        "s3:CreateStorageLensGroup",
        "s3:DeleteMultiRegionAccessPoint",
        "s3:UpdateJobStatus",
        "s3:CreateAccessGrantsInstance",
        "s3:PutInventoryConfiguration",
        "s3:DeleteStorageLensConfiguration",
        "s3:PutBucketWebsite",
        "s3:PutBucketRequestPayment",
        "s3:PutObjectRetention",
        "s3:CreateAccessPointForObjectLambda",
        "s3:UpdateAccessGrantsLocation",
        "s3:PutAccessGrantsInstanceResourcePolicy",
        "s3:ReplicateDelete"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "ailine-role-kza4frah"
}

resource "aws_iam_role_policy" "tfer--ec2-rds-role_TestRDSAccess" {
  name = "TestRDSAccess"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "rds-db:connect"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:rds-db:ap-northeast-2:*:dbuser:*/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "ec2-rds-role"
}

resource "aws_iam_role_policy" "tfer--ecsTaskExecutionRole_AllowECSExecSSM" {
  name = "AllowECSExecSSM"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ssmmessages:*",
        "ssm:UpdateInstanceInformation",
        "ec2messages:*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy" "tfer--eksAdminRole_EKSClusterPassRole" {
  name = "EKSClusterPassRole"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "iam:PassRole",
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "eksAdminRole"
}

resource "aws_iam_role_policy" "tfer--eksAdminRole_eksAdminFullAccessPolicy" {
  name = "eksAdminFullAccessPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "eks:*",
        "cloudformation:*",
        "autoscaling:*",
        "ec2:Describe*",
        "iam:PassRole",
        "iam:GetRole",
        "iam:ListRoles",
        "iam:ListAttachedRolePolicies"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "eksAdminRole"
}

resource "aws_iam_role_policy" "tfer--lambda-patch-workflow-role_PatchWorkflowPolicy" {
  name = "PatchWorkflowPolicy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:*:*:*"
    },
    {
      "Action": [
        "ssm:DescribeMaintenanceWindows",
        "ssm:DescribeMaintenanceWindowTasks",
        "ssm:DescribeMaintenanceWindowTargets",
        "ssm:SendCommand"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ec2:DescribeInstances",
        "ec2:DescribeTags"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "sns:Publish"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:sns:ap-northeast-2:557690584596:OTT-Patch-Notifications"
    },
    {
      "Action": [
        "iam:PassRole"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:iam::557690584596:role/OTT-SSM-Service-Role"
    },
    {
      "Action": [
        "ssm:ListCommandInvocations"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-patch-workflow-role"
}
