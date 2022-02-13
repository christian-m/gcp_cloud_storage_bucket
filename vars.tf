variable "environment" {
  description = "environment where this resource is used"
  type        = string
}

variable "bucket_name" {
  description = "name of the Cloud Storage bucket"
  type        = string
}

variable "region" {
  description = "region of the Cloud Storage bucket"
  type        = string
  default     = "EU"
}

variable "force_destroy" {
  description = "force destroy Cloud Storage bucket, set to true to prepare a deletion"
  type        = bool
}

variable "reader_accounts" {
  description = "members of the buckets with read access"
  type        = list(string)
  default     = []
}

variable "editor_accounts" {
  description = "members of the buckets with write access"
  type        = list(string)
  default     = []
}