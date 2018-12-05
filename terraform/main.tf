module "kms" {
  source = "key-management-service"
  region = "${var.region}"
  zone_key_name = "${var.key_zone}"
}

module "raw-data-lambda" {
  source = "dl-zone-lambda"
  region = "${var.region}"
  lambda_role_name = "${var.role_name}"
  lambda_name = "${var.lambda_name}"
  lambda_handler = "${var.handler}"
  lambda_runtime = "${var.runtime}"
  lambda_filename = "${var.lambda_zip}"
  statement_id = "${var.statement_id}"
  lambda_action = "${var.lambda_action}"
  principal = "${var.principal}"
  source_arn = "${module.raw-data-zone.zone_arn}"
  policy_name = "${var.lambda_aim_policy_name}"
}

module "raw-data-zone" {
  source = "data-lake-zone"
  region = "${var.region}"
  zone_bucket_name = "${var.zone_name}"
  zone_kms_arn = "${module.kms.kms_arn}"
  lambda_function_arn = "${module.raw-data-lambda.lambda_arn}"
  zone_events = ["${var.zone_events}"]
}