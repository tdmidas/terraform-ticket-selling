provider "aws" {
  region = "ap-northeast-1"
}
module "terraform_state_backend" {
  source = "../"
  # Cloud Posse recommends pinning every module to a specific version
  # version     = "x.x.x"
  s3_bucket_name = "terraform-tfstate-ticket-selling"
  dynamodb_table_name = "terraform-tfstate-lock"
  terraform_backend_config_file_path = "."
  terraform_backend_config_file_name = "backend.tf"
  force_destroy                      = true
}