output "bucket_id" {
  value = aws_s3_bucket.bucket1.id
}

output "instance_profile_name" {
  value = aws_iam_instance_profile.test_profile.name
}

output "role_policy" {
  value = aws_iam_role_policy.s3_policy
}