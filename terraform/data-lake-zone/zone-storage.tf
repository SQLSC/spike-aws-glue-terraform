// Default data lake zone definition based on the AWS S3
resource "aws_s3_bucket" "dl-zone" {
  bucket = "${var.zone_bucket_name}"
  acl = "${var.bucket_acl}"
  provider = "${var.provider}"

  server_side_encryption_configuration {
    "rule" {
      "apply_server_side_encryption_by_default" {
        kms_master_key_id = "${var.zone_kms_arn}"
        sse_algorithm = "aws:kms"
      }
    }
  }

}