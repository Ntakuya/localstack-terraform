terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

locals {
    with_localstack = contains(["dev", "local"], var.environment)
}

provider "aws" {
    region = "${var.region}"
}

module "aws_s3" {
  source    = "./modules/s3"
  bucket_name = "${var.environment}-${var.app}"
  providers = {
    aws = aws
  }
}
