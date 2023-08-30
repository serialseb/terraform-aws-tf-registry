resource "aws_s3_bucket" "terraform-module-archive" {
  bucket = "${var.name_prefix}-modules"
}

resource "aws_s3_account_public_access_block" "terraform-module-archive" {
  bucket                  = aws_s3_bucket.terraform-module-archive.bucket
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
