variable "images-bucket_name" {
  description = "Name of images bucket"
  type        = string
  default     = "images-bucket"
}

variable "image-a-filename" {
  description = "Image-a filename"
  type        = string
  default     = "image-a.png"
}

variable "image-a-path" {
  description = "Path to image-a"
  type        = string
  default     = "path/to/image-a.png"
}

variable "image-a-file-type" {
  description = "Image-a file type"
  type        = string
  default     = "image/png"
}
