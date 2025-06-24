# infra-template-goorm

Terraform으로 구성한 EKS 기반 마이크로서비스 인프라 자동화 프로젝트입니다.

## 📦 기술 스택

- **Terraform**: IaC (Infrastructure as Code)
- **AWS EKS**: Kubernetes 클러스터
- **Helm**: ArgoCD, ALB Ingress Controller, External Secrets 배포
- **ArgoCD**: GitOps 기반 배포 자동화
- **AWS Secrets Manager** + **ESO**: 민감정보 자동 주입

## 🏗️ 구성 요소

```bash
terraform/
├── backend.tf               # S3 + DynamoDB 상태 관리
├── provider.tf              # AWS provider 정의
├── vpc/                     # VPC, Subnet, IGW, NAT
├── eks/                     # EKS 클러스터 및 NodeGroup
├── iam/                     # IAM Roles (IRSA 포함)
├── alb-controller/          # ALB Ingress Controller Helm 배포
├── argocd/                  # ArgoCD Helm 배포
├── external-secrets/        # ESO Helm 배포
```

## 📌 주요 설정
| 항목                    | 값                                               |
| --------------------- | ----------------------------------------------- |
| 클러스터 이름               | `eks-main-cluster`                              |
| 노드그룹 이름/타입            | `ng-multi-az` / `t3.medium`                     |
| VPC / Subnet          | 기존 구성 활용 (`data` 블록)                            |
| ArgoCD / ESO / ALB 설치 | Helm 배포                                         |
| Secrets 연동            | AWS Secrets Manager + External Secrets Operator |
| 계정 독립성                | IAM Role/Policy 선언형 구성 + 변수화                    |

## 🛠️ 사용법
```bash
terraform init
terraform plan -var-file="envs/dev.tfvars"
terraform apply -var-file="envs/dev.tfvars"
```
※ envs/ 아래에 환경별 변수 파일을 저장해 환경별 인프라를 분리 관리할 수 있습니다.

## 📎 참고 사항
- 이 코드는 기존에 구성된 VPC/Subnet 등을 data 블록으로 불러오는 방식입니다.

- IAM Role/Policy는 하드코딩된 ARN 없이, 정책 선언 기반으로 계정 독립성 유지가 가능합니다.

- Helm 차트 배포 시 공통 설정은 공유 values로 관리하고, ArgoCD를 통해 GitOps 방식 배포가 이뤄집니다.

- external-secrets/ 모듈은 AWS Secrets Manager에 등록된 키 값을 Kubernetes Secret으로 자동 주입합니다.

## 🧑‍💻 작성자
작성자: ashenglow

이 프로젝트는 개인 포트폴리오 및 인프라 자동화 테스트 목적입니다.

