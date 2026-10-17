# SecureCloud Security Review

## Implemented in configuration

- Separate Terraform modules for network and storage.
- VPC with two public and two private subnets.
- Public routing through an internet gateway.
- Private route tables without a default internet route.
- Web security group rules for TCP ports 80 and 443.
- No SSH ingress rule in the web security group.
- S3 public access block settings.
- S3 AES256 server-side encryption configuration.
- S3 versioning configuration.
- Terraform formatting and validation checks.
- Checkov security scanning in the CI workflow.

## Review items

- Confirm whether public HTTP ingress is required.
- Restrict the web ingress source CIDR where appropriate.
- Review Checkov findings and document justified exceptions.
- Pin CI actions to verified commit SHAs before production use.
- Design IAM least-privilege permissions.
- Define log retention, monitoring and recovery requirements.

## Validation boundary

Terraform fmt, init and validate check code formatting, dependency
initialization and configuration consistency.

Checkov checks Terraform against its available policies.

Neither validation nor static scanning proves that a deployed
environment is secure.

No AWS resources were deployed for this exercise.
