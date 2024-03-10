variable "tenant_name" {
  description = "Name of the tenant. This will be the name of the user and the base name of the bucket"
  type        = string
}

variable "bucket_prefix" {
  description = "Optionally set a prefix for the tenants bucket, such as 'mycluster-'"
  type        = string
  default     = ""
}
variable "bucket_force_destroy" {
  description = "Enable forceful destruction of the bucket on deletion"
  type        = bool
  default     = false
}

variable "user_tags" {
  description = "Tags to apply to the tenants user"
  type        = map(string)
  default     = {}
}

variable "minio_url" {
  description = "Full URL to the minio API. If set, the module will populate additional outputs, such as minio_tls_cert for convenience"
  type        = string
  default     = ""
}
