terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    region  = "ap-northeast-1"
    bucket  = "terraform-tfstate-ticket-selling"
    key     = "terraform.tfstate"
    profile = ""
    encrypt = "true"

    dynamodb_table = "terraform-tfstate-lock"
  }
}
