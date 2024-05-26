output "images-bucket_name" {
  description = "The name of Images bucket"
  value       = aws_s3_bucket.images-bucket.bucket
}
