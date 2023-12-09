# main.tf

variable "environment" {
  description = "The environment for which the S3 bucket is created (e.g., dev, stage, prod)"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Environment = var.environment
  }
}
