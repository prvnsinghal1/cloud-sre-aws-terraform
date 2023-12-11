# main.tf

module "s3_bucket_poc" {
  source        = "./../modules/s3"
  environment   = "poc"
  appName       = "Terraform"
  infraOwner    = "sre-cloud-reliability@tavisca.com"
  name          = "IaaC module for Provisioning"
  businessUnit  = "travel.poc"
  backup        = "no"
  dataClassification  = "internal"
  product       = "poap"
  region        = "us-east-1"
  bucket_name   = "cloud-sre-poc-bucket-demo"
}