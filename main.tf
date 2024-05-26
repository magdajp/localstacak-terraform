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
  for_each    = { for idx, image in var.images : idx => image }
  bucket       = aws_s3_bucket.images-bucket.id
  key          = each.value.image-filename
  source       = each.value.image-path
  content_type = each.value.image-content-type
}
