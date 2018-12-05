resource "aws_s3_bucket_notification" "default_notification" {
  bucket = "${aws_s3_bucket.dl-zone.arn}"

  lambda_function {
    lambda_function_arn = "${var.lambda_function_arn}"
    events = ["${var.zone_events}"]
  }
}