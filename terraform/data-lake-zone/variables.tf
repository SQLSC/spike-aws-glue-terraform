variable "zone_bucket_name" {
}
variable "bucket_acl" {
  default = "private"
}
variable "zone_kms_arn" {}
variable "profile" {
  default = "default"
}
variable "region" {}
variable "provider" {
  default = "aws.default"
}

variable "lambda_function_arn" {}
variable "zone_events" {
  type="list"
}