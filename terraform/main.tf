module "kms" {
  source = "key-management-service"
  region = "${var.region}"
  zone_key_name = "${var.key_zone}"
}

module "raw-data-zone" {
  source = "data-lake-zone"
  region = "${var.region}"
  zone_bucket_name = "${var.zone_name}"
  zone_kms_arn = "${module.kms.kms_arn}"
}