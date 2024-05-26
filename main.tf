terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_s3_bucket" "images-bucket" {
  bucket = var.images-bucket_name
}
