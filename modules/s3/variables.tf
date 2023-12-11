variable "environment" {
  description = "The environment name (e.g., poc, qa, stage, prod)"
  type        = string
}
variable "appName" {
  description = "The App name (e.g., Terraform )"
  type        = string
}
variable "infraOwner" {
  description = "The Infra Owner (e.g., sre-cloud-reliability@tavisca.com )"
  type        = string
}
variable "name" {
  description = "The name (e.g., IaaC module for Provisioning)"
  type        = string
}
variable "businessUnit" {
  description = "The environment name (e.g., travel.poc)"
  type        = string
}
variable "backup" {
  description = "The environment name (e.g., yes or no)"
  type        = string
}
variable "dataClassification" {
  description = "The environment name (e.g., internal)"
  type        = string
}
variable "product" {
  description = "The environment name (e.g., poap )"
  type        = string
}

variable "region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}
