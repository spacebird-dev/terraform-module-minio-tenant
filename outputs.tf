output "bucket_name" {
  value = local.bucket_name
}
output "bucket_arn" {
  value = minio_s3_bucket.tenant.arn
}

output "minio_user" {
  value     = minio_iam_service_account.name.access_key
  sensitive = true
}
output "minio_password" {
  value     = minio_iam_service_account.name.secret_key
  sensitive = true
}
output "minio_target_user" {
  value = minio_iam_service_account.name.target_user
}

output "minio_tls_cert" {
  value = try([for cert in data.tls_certificate.minio_tls.certificates : cert if cert.is_ca].0.cert_pem, data.tls_certificate.minio_tls.certificates.0.cert_pem, null)
}
output "minio_url" {
  value = length(var.minio_url) > 0 ? var.minio_url : null
}
