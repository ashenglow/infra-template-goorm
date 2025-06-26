resource "aws_iam_role_policy_attachment" "tfer--33-role-wxyflmc6_AWSLambdaBasicExecutionRole-42d5a853-a80a-4aa2-a8bc-daba450a3cf0" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/AWSLambdaBasicExecutionRole-42d5a853-a80a-4aa2-a8bc-daba450a3cf0"
  role       = "33-role-wxyflmc6"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline_AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline"
  role       = "AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline_CodePipeline-CodeBuild-ap-northeast-2-test11-pipeline" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/CodePipeline-CodeBuild-ap-northeast-2-test11-pipeline"
  role       = "AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline_CodePipeline-CodeConnections-ap-northeast-2-test11-pipeline" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/CodePipeline-CodeConnections-ap-northeast-2-test11-pipeline"
  role       = "AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline_CodePipeline-ECSDeploy-ap-northeast-2-test11-pipeline" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/CodePipeline-ECSDeploy-ap-northeast-2-test11-pipeline"
  role       = "AWSCodePipelineServiceRole-ap-northeast-2-test11-pipeline"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_AdministratorAccess_44912c3fbef89122_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "AWSReservedSSO_AdministratorAccess_44912c3fbef89122"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonEKSNodegroup_AWSServiceRoleForAmazonEKSNodegroup" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonEKSNodegroup"
  role       = "AWSServiceRoleForAmazonEKSNodegroup"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonEKS_AmazonEKSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonEKSServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonEKS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonEMRServerless_AmazonEMRServerlessServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonEMRServerlessServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonEMRServerless"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonQDeveloper_AWSServiceRoleForAmazonQDeveloper" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSServiceRoleForAmazonQDeveloper"
  role       = "AWSServiceRoleForAmazonQDeveloper"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonSSM_AccountDiscovery_AWSSystemsManagerAccountDiscoveryServicePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSystemsManagerAccountDiscoveryServicePolicy"
  role       = "AWSServiceRoleForAmazonSSM_AccountDiscovery"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonSSM_AmazonSSMServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonSSMServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonSSM"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonSageMakerNotebooks_AmazonSageMakerNotebooksServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonSageMakerNotebooksServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonSageMakerNotebooks"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAutoScaling_AutoScalingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AutoScalingServiceRolePolicy"
  role       = "AWSServiceRoleForAutoScaling"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForBackup_AWSBackupServiceLinkedRolePolicyForBackup" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSBackupServiceLinkedRolePolicyForBackup"
  role       = "AWSServiceRoleForBackup"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForClientVPNConnections_ClientVPNServiceConnectionsRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ClientVPNServiceConnectionsRolePolicy"
  role       = "AWSServiceRoleForClientVPNConnections"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForClientVPN_ClientVPNServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ClientVPNServiceRolePolicy"
  role       = "AWSServiceRoleForClientVPN"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForCloudWatchEvents_CloudWatchEventsServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/CloudWatchEventsServiceRolePolicy"
  role       = "AWSServiceRoleForCloudWatchEvents"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForComputeOptimizer_ComputeOptimizerServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/ComputeOptimizerServiceRolePolicy"
  role       = "AWSServiceRoleForComputeOptimizer"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForCostOptimizationHub_CostOptimizationHubServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/CostOptimizationHubServiceRolePolicy"
  role       = "AWSServiceRoleForCostOptimizationHub"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForEC2Spot_AWSEC2SpotServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSEC2SpotServiceRolePolicy"
  role       = "AWSServiceRoleForEC2Spot"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForECS_AmazonECSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonECSServiceRolePolicy"
  role       = "AWSServiceRoleForECS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForElasticLoadBalancing_AWSElasticLoadBalancingServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSElasticLoadBalancingServiceRolePolicy"
  role       = "AWSServiceRoleForElasticLoadBalancing"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForGlobalAccelerator_AWSGlobalAcceleratorSLRPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSGlobalAcceleratorSLRPolicy"
  role       = "AWSServiceRoleForGlobalAccelerator"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForOrganizations_AWSOrganizationsServiceTrustPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = "AWSServiceRoleForOrganizations"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForRDS_AmazonRDSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"
  role       = "AWSServiceRoleForRDS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForResourceExplorer_AWSResourceExplorerServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSResourceExplorerServiceRolePolicy"
  role       = "AWSServiceRoleForResourceExplorer"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSSMQuickSetup_SSMQuickSetupRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/SSMQuickSetupRolePolicy"
  role       = "AWSServiceRoleForSSMQuickSetup"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSSO_AWSSSOServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"
  role       = "AWSServiceRoleForSSO"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForWellArchitected_Discovery_AWSWellArchitectedDiscoveryServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSWellArchitectedDiscoveryServiceRolePolicy"
  role       = "AWSServiceRoleForWellArchitected_Discovery"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSAutoClusterRole_AmazonEKSBlockStoragePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSBlockStoragePolicy"
  role       = "AmazonEKSAutoClusterRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSAutoClusterRole_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "AmazonEKSAutoClusterRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSAutoClusterRole_AmazonEKSComputePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSComputePolicy"
  role       = "AmazonEKSAutoClusterRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSAutoClusterRole_AmazonEKSLoadBalancingPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSLoadBalancingPolicy"
  role       = "AmazonEKSAutoClusterRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSAutoClusterRole_AmazonEKSNetworkingPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSNetworkingPolicy"
  role       = "AmazonEKSAutoClusterRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSAutoNodeRole_AmazonEC2ContainerRegistryPullOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPullOnly"
  role       = "AmazonEKSAutoNodeRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSAutoNodeRole_AmazonEKSWorkerNodeMinimalPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodeMinimalPolicy"
  role       = "AmazonEKSAutoNodeRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSNodeRole_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "AmazonEKSNodeRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSNodeRole_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "AmazonEKSNodeRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKSNodeRole_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "AmazonEKSNodeRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonEKS_EBS_CSI_DriverRole_AmazonEBSCSIDriverPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"
  role       = "AmazonEKS_EBS_CSI_DriverRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250408T173348_AmazonSageMaker-ExecutionPolicy-20250408T173348" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/AmazonSageMaker-ExecutionPolicy-20250408T173348"
  role       = "AmazonSageMaker-ExecutionRole-20250408T173348"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250408T173348_AmazonSageMakerCanvasAIServicesAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasAIServicesAccess"
  role       = "AmazonSageMaker-ExecutionRole-20250408T173348"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250408T173348_AmazonSageMakerCanvasDataPrepFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasDataPrepFullAccess"
  role       = "AmazonSageMaker-ExecutionRole-20250408T173348"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250408T173348_AmazonSageMakerCanvasFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasFullAccess"
  role       = "AmazonSageMaker-ExecutionRole-20250408T173348"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250408T173348_AmazonSageMakerCanvasSMDataScienceAssistantAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasSMDataScienceAssistantAccess"
  role       = "AmazonSageMaker-ExecutionRole-20250408T173348"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250408T173348_AmazonSageMakerFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
  role       = "AmazonSageMaker-ExecutionRole-20250408T173348"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250426T142016_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "AmazonSageMaker-ExecutionRole-20250426T142016"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250426T142016_AmazonSageMaker-ExecutionPolicy-20250426T142016" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/AmazonSageMaker-ExecutionPolicy-20250426T142016"
  role       = "AmazonSageMaker-ExecutionRole-20250426T142016"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250426T142016_AmazonSageMakerCanvasAIServicesAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasAIServicesAccess"
  role       = "AmazonSageMaker-ExecutionRole-20250426T142016"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250426T142016_AmazonSageMakerCanvasDataPrepFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasDataPrepFullAccess"
  role       = "AmazonSageMaker-ExecutionRole-20250426T142016"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250426T142016_AmazonSageMakerCanvasFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasFullAccess"
  role       = "AmazonSageMaker-ExecutionRole-20250426T142016"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250426T142016_AmazonSageMakerCanvasSMDataScienceAssistantAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasSMDataScienceAssistantAccess"
  role       = "AmazonSageMaker-ExecutionRole-20250426T142016"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMaker-ExecutionRole-20250426T142016_AmazonSageMakerFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
  role       = "AmazonSageMaker-ExecutionRole-20250426T142016"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerCanvasEMRSExecutionAccess-20250408T173347_AmazonSageMakerCanvasEMRServerlessExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasEMRServerlessExecutionRolePolicy"
  role       = "AmazonSageMakerCanvasEMRSExecutionAccess-20250408T173347"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerCanvasEMRSExecutionAccess-20250426T142015_AmazonSageMakerCanvasEMRServerlessExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasEMRServerlessExecutionRolePolicy"
  role       = "AmazonSageMakerCanvasEMRSExecutionAccess-20250426T142015"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsApiGatewayRole_AmazonSageMakerServiceCatalogProductsApiGatewayServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsApiGatewayServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsApiGatewayRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsCloudformationRole_AmazonSageMakerServiceCatalogProductsCloudformationServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsCloudformationServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsCloudformationRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsCodeBuildRole_AmazonSageMakerServiceCatalogProductsCodeBuildServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerServiceCatalogProductsCodeBuildServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsCodeBuildRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsCodePipelineRole_AmazonSageMakerServiceCatalogProductsCodePipelineServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsCodePipelineServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsCodePipelineRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsEventsRole_AmazonSageMakerServiceCatalogProductsEventsServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsEventsServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsEventsRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsExecutionRole_AmazonSageMakerFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
  role       = "AmazonSageMakerServiceCatalogProductsExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsFirehoseRole_AmazonSageMakerServiceCatalogProductsFirehoseServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsFirehoseServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsFirehoseRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsGlueRole_AmazonSageMakerServiceCatalogProductsGlueServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsGlueServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsGlueRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsLambdaRole_AmazonSageMakerServiceCatalogProductsLambdaServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonSageMakerServiceCatalogProductsLambdaServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsLambdaRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsLaunchRole_AmazonSageMakerAdmin-ServiceCatalogProductsServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerAdmin-ServiceCatalogProductsServiceRolePolicy"
  role       = "AmazonSageMakerServiceCatalogProductsLaunchRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerServiceCatalogProductsUseRole_AmazonSageMakerServiceCatalogProductsUseRole-20250408T173391" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/AmazonSageMakerServiceCatalogProductsUseRole-20250408T173391"
  role       = "AmazonSageMakerServiceCatalogProductsUseRole"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSagemakerCanvasBedrockRole-20250408T173347_AmazonSageMakerCanvasBedrockAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerCanvasBedrockAccess"
  role       = "AmazonSagemakerCanvasBedrockRole-20250408T173347"
}

resource "aws_iam_role_policy_attachment" "tfer--CodePipelineStarterTemplate--TaskDefinitionTaskRole-y1SQZpVrAWhU_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "CodePipelineStarterTemplate--TaskDefinitionTaskRole-y1SQZpVrAWhU"
}

resource "aws_iam_role_policy_attachment" "tfer--CodePipelineStarterTemplate--TaskDefinitionTaskRole-y1SQZpVrAWhU_AmazonECS_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
  role       = "CodePipelineStarterTemplate--TaskDefinitionTaskRole-y1SQZpVrAWhU"
}

resource "aws_iam_role_policy_attachment" "tfer--NotifySlackBillingAlert-role-e2aihmph_AWSLambdaBasicExecutionRole-f28814b5-4208-4b83-91c1-1e7e2f9a7634" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/AWSLambdaBasicExecutionRole-f28814b5-4208-4b83-91c1-1e7e2f9a7634"
  role       = "NotifySlackBillingAlert-role-e2aihmph"
}

resource "aws_iam_role_policy_attachment" "tfer--NotifySlackBillingAlert-role-e2aihmph_AmazonSNSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSNSFullAccess"
  role       = "NotifySlackBillingAlert-role-e2aihmph"
}

resource "aws_iam_role_policy_attachment" "tfer--NotifySlackBillingAlert-role-iw063w55_AWSLambdaBasicExecutionRole-0ee62b7e-9f04-421f-b73a-7c1377a5677c" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/AWSLambdaBasicExecutionRole-0ee62b7e-9f04-421f-b73a-7c1377a5677c"
  role       = "NotifySlackBillingAlert-role-iw063w55"
}

resource "aws_iam_role_policy_attachment" "tfer--NotifySlackBillingAlert-role-iw063w55_AmazonSNSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSNSFullAccess"
  role       = "NotifySlackBillingAlert-role-iw063w55"
}

resource "aws_iam_role_policy_attachment" "tfer--OTT-Patch-Lambda-Role_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "OTT-Patch-Lambda-Role"
}

resource "aws_iam_role_policy_attachment" "tfer--OTT-Patch-Lambda-Role_OTT-Patch-SNS-Policy" {
  policy_arn = "arn:aws:iam::557690584596:policy/OTT-Patch-SNS-Policy"
  role       = "OTT-Patch-Lambda-Role"
}

resource "aws_iam_role_policy_attachment" "tfer--OTT-Patch-Lambda-Role_OTT-Patch-SSM-Policy" {
  policy_arn = "arn:aws:iam::557690584596:policy/OTT-Patch-SSM-Policy"
  role       = "OTT-Patch-Lambda-Role"
}

resource "aws_iam_role_policy_attachment" "tfer--OTT-SSM-Service-Role_OTT-Patch-SNS-Policy" {
  policy_arn = "arn:aws:iam::557690584596:policy/OTT-Patch-SNS-Policy"
  role       = "OTT-SSM-Service-Role"
}

resource "aws_iam_role_policy_attachment" "tfer--ai-line-role-4ylui19j_AWSLambdaBasicExecutionRole-ca6a8359-f0a2-4ac9-a9a8-d8cdf4a6af4f" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/AWSLambdaBasicExecutionRole-ca6a8359-f0a2-4ac9-a9a8-d8cdf4a6af4f"
  role       = "ai-line-role-4ylui19j"
}

resource "aws_iam_role_policy_attachment" "tfer--ailine-role-kza4frah_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "ailine-role-kza4frah"
}

resource "aws_iam_role_policy_attachment" "tfer--ailine-role-kza4frah_AWSLambdaBasicExecutionRole-1404c6c8-0dac-469f-b999-224f737a94e0" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/AWSLambdaBasicExecutionRole-1404c6c8-0dac-469f-b999-224f737a94e0"
  role       = "ailine-role-kza4frah"
}

resource "aws_iam_role_policy_attachment" "tfer--ailine-role-kza4frah_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "ailine-role-kza4frah"
}

resource "aws_iam_role_policy_attachment" "tfer--ailine-role-kza4frah_AmazonSageMakerFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
  role       = "ailine-role-kza4frah"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-backup-service-role_AWSBackupServiceRolePolicyForBackup" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForBackup"
  role       = "aws-backup-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--aws-backup-service-role_AWSBackupServiceRolePolicyForRestores" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSBackupServiceRolePolicyForRestores"
  role       = "aws-backup-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-flask-app-service-role_AmazonEC2ContainerRegistryPowerUser" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"
  role       = "codebuild-flask-app-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-flask-app-service-role_AmazonECS_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
  role       = "codebuild-flask-app-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-flask-app-service-role_CloudWatchLogsFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
  role       = "codebuild-flask-app-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-flask-app-service-role_CodeBuildBasePolicy-flask-app-ap-northeast-2" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/CodeBuildBasePolicy-flask-app-ap-northeast-2"
  role       = "codebuild-flask-app-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-flask-app-service-role_CodeBuildSecretsManagerSourceCredentialsPolicy-flask-app-build-ap-northeast-2" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/CodeBuildSecretsManagerSourceCredentialsPolicy-flask-app-build-ap-northeast-2"
  role       = "codebuild-flask-app-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-test11-service-role_AmazonEC2ContainerRegistryPowerUser" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser"
  role       = "codebuild-test11-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-test11-service-role_AmazonECS_FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
  role       = "codebuild-test11-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-test11-service-role_CloudWatchLogsFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
  role       = "codebuild-test11-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-test11-service-role_CodeBuildBasePolicy-test11-ap-northeast-2" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/CodeBuildBasePolicy-test11-ap-northeast-2"
  role       = "codebuild-test11-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-test11-service-role_CodeBuildCodeConnectionsSourceCredentialsPolicy-test11-build-ap-northeast-2-557690584596" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/CodeBuildCodeConnectionsSourceCredentialsPolicy-test11-build-ap-northeast-2-557690584596"
  role       = "codebuild-test11-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--codebuild-test11-service-role_CodeBuildSecretsManagerSourceCredentialsPolicy-test11-build-ap-northeast-2" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/CodeBuildSecretsManagerSourceCredentialsPolicy-test11-build-ap-northeast-2"
  role       = "codebuild-test11-service-role"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2-ami-msa_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "ec2-ami-msa"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2-ami-msa_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "ec2-ami-msa"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2-ami-msa_CloudWatchAgentServerPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
  role       = "ec2-ami-msa"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2-rds-role_AmazonRDSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role       = "ec2-rds-role"
}

resource "aws_iam_role_policy_attachment" "tfer--ecsInstanceRole_AmazonEC2ContainerServiceforEC2Role" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
  role       = "ecsInstanceRole"
}

resource "aws_iam_role_policy_attachment" "tfer--ecsTaskExecutionRole_AmazonECSTaskExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
  role       = "ecsTaskExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksAdminRole_AWSCloudFormationFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCloudFormationFullAccess"
  role       = "eksAdminRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksAdminRole_AmazonEC2ReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
  role       = "eksAdminRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksAdminRole_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "eksAdminRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksAdminRole_AmazonEKSServicePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
  role       = "eksAdminRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksAdminRole_AmazonSSMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMFullAccess"
  role       = "eksAdminRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksAdminRole_AutoScalingFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AutoScalingFullAccess"
  role       = "eksAdminRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksAdminRole_CloudWatchLogsReadOnlyAccess" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsReadOnlyAccess"
  role       = "eksAdminRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksAdminRole_IAMFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
  role       = "eksAdminRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksClusterRole_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "eksClusterRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksNodeGroupRole_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "eksNodeGroupRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksNodeGroupRole_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "eksNodeGroupRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksNodeGroupRole_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "eksNodeGroupRole"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-eks-main-cluster-addon-iamserviceaccou-Role1-Merfza9PpCEh_SecretsManagerReadWrite" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  role       = "eksctl-eks-main-cluster-addon-iamserviceaccou-Role1-Merfza9PpCEh"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-eks-main-cluster-addon-iamserviceaccou-Role1-kpJG6ihdLZw7_eks-secrets-access-policy" {
  policy_arn = "arn:aws:iam::557690584596:policy/eks-secrets-access-policy"
  role       = "eksctl-eks-main-cluster-addon-iamserviceaccou-Role1-kpJG6ihdLZw7"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-eks-main-cluster-addon-iamserviceaccou-Role1-nckStJ31DnsL_aws-load-balancer-controller" {
  policy_arn = "arn:aws:iam::557690584596:policy/aws-load-balancer-controller"
  role       = "eksctl-eks-main-cluster-addon-iamserviceaccou-Role1-nckStJ31DnsL"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-cluster-cluster-ServiceRole-shyZdwGYDESz_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "eksctl-watcha-clone-cluster-cluster-ServiceRole-shyZdwGYDESz"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-cluster-cluster-ServiceRole-shyZdwGYDESz_AmazonEKSVPCResourceController" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  role       = "eksctl-watcha-clone-cluster-cluster-ServiceRole-shyZdwGYDESz"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-addon-vpc-cni-Role1-3ZdqtmjgFbrS_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "eksctl-watcha-clone-micro-addon-vpc-cni-Role1-3ZdqtmjgFbrS"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-cluster-ServiceRole-sjt18q3FOaeZ_AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = "eksctl-watcha-clone-micro-cluster-ServiceRole-sjt18q3FOaeZ"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-cluster-ServiceRole-sjt18q3FOaeZ_AmazonEKSVPCResourceController" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  role       = "eksctl-watcha-clone-micro-cluster-ServiceRole-sjt18q3FOaeZ"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-HqkIZpLkG6R3_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-HqkIZpLkG6R3"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-HqkIZpLkG6R3_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-HqkIZpLkG6R3"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-HqkIZpLkG6R3_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-HqkIZpLkG6R3"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-HqkIZpLkG6R3_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-HqkIZpLkG6R3"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-bUOULRc5A1fn_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-bUOULRc5A1fn"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-bUOULRc5A1fn_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-bUOULRc5A1fn"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-bUOULRc5A1fn_AmazonEKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-bUOULRc5A1fn"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-bUOULRc5A1fn_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-bUOULRc5A1fn"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-gXEOGVmkih7B_AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-gXEOGVmkih7B"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-gXEOGVmkih7B_AmazonEKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-gXEOGVmkih7B"
}

resource "aws_iam_role_policy_attachment" "tfer--eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-gXEOGVmkih7B_AmazonSSMManagedInstanceCore" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = "eksctl-watcha-clone-micro-nodegrou-NodeInstanceRole-gXEOGVmkih7B"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-patch-workflow-role_AWSLambdaBasicExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = "lambda-patch-workflow-role"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-monitoring-role_AmazonRDSEnhancedMonitoringRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
  role       = "rds-monitoring-role"
}

resource "aws_iam_role_policy_attachment" "tfer--s3-result-role-itu92xm0_AWSLambdaBasicExecutionRole-5211d024-87ca-44b8-a131-ed6ea5bee473" {
  policy_arn = "arn:aws:iam::557690584596:policy/service-role/AWSLambdaBasicExecutionRole-5211d024-87ca-44b8-a131-ed6ea5bee473"
  role       = "s3-result-role-itu92xm0"
}

resource "aws_iam_role_policy_attachment" "tfer--spark-cluster-s3-role_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "spark-cluster-s3-role"
}
