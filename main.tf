terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.51.1"
    }
  }
}

resource "aws_s3_bucket" "images-bucket" {
  bucket = var.images-bucket_name
  force_destroy = true
}

resource "aws_s3_object" "image" {
  bucket       = aws_s3_bucket.images-bucket.id
  key          = var.image-filename
  source       = var.image-path
  content_type = var.image-content-type
}
