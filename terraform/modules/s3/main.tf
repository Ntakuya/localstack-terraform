terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

resource "aws_s3_bucket" "s3_module" {
    bucket = "${var.bucket_name}"
    acl = "private"

    versioning {
        enabled = true
    }
}
