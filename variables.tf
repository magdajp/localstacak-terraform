variable "images-bucket_name" {
  description = "Name of images bucket"
  type        = string
  default     = "images-bucket"
}

variable "images" {
  description = "List of images objects to upload e.g.: \n{\n\timage-filename:example.png\n\timage-path: examples/example.png\n\timage-content-type:image/png\n}"
  type        = list(object({
    image-path         = string
    image-filename     = string
    image-content-type = string
  }))
}
