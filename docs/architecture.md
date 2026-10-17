# SecureCloud Architecture

## Purpose

SecureCloud is a learning project that defines an AWS infrastructure
security foundation using Terraform.

## Components

- VPC: isolated network address space.
- Public subnets: subnets associated with a route table that has an
  internet gateway default route.
- Private subnets: subnets whose route tables do not define a default
  internet route.
- Internet gateway: configured as the VPC's internet route target.
- Web security group: allows TCP ports 80 and 443 from the configured
  source CIDR and defines outbound IPv4 traffic.
- S3 logging bucket: configured with public access blocking,
  AES256 server-side encryption, and versioning.

## Terraform layout

- environments/dev: root configuration for the development environment.
- modules/network: reusable network configuration.
- modules/secure_storage: reusable S3 storage configuration.

## Deployment status

This repository defines infrastructure configuration only.
No AWS resources are deployed as part of this learning exercise.
