provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Environment = var.environment
    AppName = var.appName
    InfraOwner = var.infraOwner
    BusinessUnit = var.businessUnit
    Backup = var.backup
    Name = var.name
    DataClassification = var.dataClassification
    Product = var.product
  }

}

resource "aws_s3_bucket_versioning" "s3_bucket_versioning" {
  bucket = aws_s3_bucket.s3_bucket.bucket
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_policy" "s3_bucket_policy" {
  bucket = aws_s3_bucket.s3_bucket.bucket

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = "*",
        Action = [
          "s3:GetObject",
          "s3:PutObject",
        ],
        Resource = [
          "${aws_s3_bucket.s3_bucket.arn}/*",
        ],
      },
    ],
  })
}
