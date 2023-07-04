# modules/S3/variables-s3.tf

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "prevent_destroy" {
  description = "Prevent the S3 bucket from being destroyed"
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = false
}

variable "logging_bucket" {
  description = "The S3 bucket where access logs are stored"
  type        = string
}

variable "logging_prefix" {
  description = "The prefix to be used for access logs"
  type        = string
  default     = ""
}

variable "server_side_encryption_algorithm" {
  description = "The server-side encryption algorithm for the S3 bucket"
  type        = string
  default     = "AES256"
}

variable "tags" {
  description = "A map of tags to assign to the S3 bucket"
  type        = map(string)
  default     = {}
}
