# main.tf

module "dev_s3_bucket" {
  source       = "./../modules/s3"
  environment  = "poc"
  bucket_name   = "cloud-sre-s3-bucket-demo"
}
