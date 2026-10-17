# SecureCloud Threat Model

## Scope

This threat model covers the Terraform configuration in this repository.
It does not claim that a deployed AWS environment has been tested.

## Assets

- Application network
- Logging data stored in S3
- Infrastructure configuration
- Cloud access credentials, if used during a future deployment

## Threats and controls

### Public exposure of storage

Threat:
Logging objects or bucket data could be exposed through public access.

Controls:
S3 public access block settings are enabled in the configuration.
IAM permissions and bucket policies would also need review.

### Excessive network access

Threat:
An overly broad ingress rule could expose an application service.

Controls:
Ingress is explicitly defined for TCP ports 80 and 443.
The configured source CIDR must be reviewed before deployment.
No SSH ingress rule is defined.

### Accidental deletion of log data

Threat:
Logging objects could be deleted or overwritten accidentally.

Controls:
S3 versioning is enabled.
The bucket configuration sets force_destroy to false.
Versioning is not a substitute for a separate backup and retention plan.

### Insecure or inconsistent configuration changes

Threat:
A change could introduce a known infrastructure misconfiguration.

Controls:
Terraform formatting and validation are included in the workflow.
Checkov is included as an infrastructure security scanner.

## Remaining risks

- IAM permissions are not defined in this project.
- No production deployment or live penetration test has been performed.
- Logging retention, monitoring, alerting and recovery procedures need
  further design.
- CI actions require supply-chain hardening before production use.
