# main.tf

module "s3_bucket_poc" {
  source        = "./../modules/s3"
  environment   = "poc"
  region        = "us-east-1"
  bucket_name   = "cloud-sre-poc-bucket-demo"
}