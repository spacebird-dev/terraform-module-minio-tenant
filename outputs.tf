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
