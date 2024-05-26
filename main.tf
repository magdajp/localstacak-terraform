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
}

resource "aws_s3_object" "image-a" {
  bucket       = aws_s3_bucket.images-bucket.id
  key          = var.image-a-filename
  source       = var.image-a-path
  content_type = var.image-a-file-type
}
