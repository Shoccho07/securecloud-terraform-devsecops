variable "aws_region" {
  description = "AWS region for the environment"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_cidr" {
  description = "Address range for the VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "Address ranges for public subnets"
  type        = list(string)
  default     = ["10.20.1.0/24", "10.20.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "Address ranges for private subnets"
  type        = list(string)
  default     = ["10.20.11.0/24", "10.20.12.0/24"]
}

variable "allowed_web_cidr" {
  description = "Source address range allowed to reach web ports"
  type        = string
  default     = "0.0.0.0/0"
}

variable "log_bucket_name" {
  description = "Name for the private logging bucket"
  type        = string
  default     = "replace-with-unique-securecloud-log-bucket"
}
