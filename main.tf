terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

resource "aws_s3_bucket" "images-bucket" {
  bucket = var.images-bucket_name
}

resource "aws_s3_bucket_object" "image-a" {
  bucket       = aws_s3_bucket.images-bucket.id
  key          = var.image-a-filename
  source       = var.image-a-path
  content_type = var.image-a-file-type
}
