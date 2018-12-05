variable "region" {}
variable "key_zone" {}
variable "zone_name" {}
// lambda raw
variable "role_name" {}
variable "lambda_name" {}
variable "handler" {}
variable "runtime" {}
variable "lambda_zip" {}
variable "statement_id" {}
variable "lambda_action" {}
variable "principal" {}
variable "zone_events" {
  type = "list"
}
variable "lambda_aim_policy_name" {}