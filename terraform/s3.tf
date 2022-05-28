resource "aws_s3_bucket" "test_data" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_public_access_block" "test_data" {
  bucket = aws_s3_bucket.test_data.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
