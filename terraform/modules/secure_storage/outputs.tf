output "bucket_name" {
  description = "Name of the secure logging bucket"
  value       = aws_s3_bucket.logs.bucket
}
