# modules/s3/main.tf

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  lifecycle {
    prevent_destroy = var.prevent_destroy
  }

  versioning {
    enabled = var.versioning_enabled
  }

  logging {
    target_bucket = var.logging_bucket
    target_prefix = var.logging_prefix
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.server_side_encryption_algorithm
      }
    }
  }

  tags = var.tags
}
