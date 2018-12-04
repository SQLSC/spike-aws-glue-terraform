module "kms" {
  source = "key-management-service"
  provider = "${var.provider}"
  region = "${var.region}"
  zone_key_name = "${var.key_zone}"
}