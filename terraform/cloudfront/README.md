# CloudFront 설정 - goorm-front 배포용

- 도메인: front.aws-test-site.shop
- 오리진:
    - S3: goorm-front.s3.ap-northeast-2.amazonaws.com
    - ALB: api.aws-test-site.shop
- Behavior:
    - `/api/*` → ALB + 커스텀 헤더
    - `/*` → S3 정적 호스팅
- ACM 인증서: us-east-1, sni-only, TLSv1.2_2021
