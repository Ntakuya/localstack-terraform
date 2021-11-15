terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}


provider "aws" {
    access_key = "dummy"
    secret_key = "dummy"

    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    s3_force_path_style         = true

    endpoints {
        iam      = "http://localhost:4566"
        s3       = "http://localhost:4566"
        dynamodb = "http://localhost:4566"
    }
}

module "aws_s3" {
  source    = "../modules/s3"
  bucket_name = "${var.environment}-${var.app}"
  providers = {
    aws = aws
  }
}
