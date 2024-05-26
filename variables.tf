variable "images-bucket_name" {
  description = "Name of images bucket"
  type        = string
  default     = "images-bucket"
}

variable "image-filename" {
  description = "Image file name with extension e.g example.png"
  type        = string
}

variable "image-path" {
  description = "Path to the image file"
  type        = string
}

variable "image-content-type" {
  description = "Image MIME type e.g. image/png"
  type        = string
}
