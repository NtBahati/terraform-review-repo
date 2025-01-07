# Create S3 Bucket
resource "aws_s3_bucket" "devoir02_bucket" {
  bucket = "bahati-s3-bucket2" # Use a globally unique bucket name in lowercase
#acl    = "private"

  tags = {
    Name        = "S3_Bucket"
    Environment = "Dev"
  }
}

# Attach Server-Side Encryption Configuration
resource "aws_s3_bucket_server_side_encryption_configuration" "devoir02_bucket_sse" {
  bucket = aws_s3_bucket.devoir02_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256" # AWS-managed encryption (SSE-S3)
    }
  }
}
