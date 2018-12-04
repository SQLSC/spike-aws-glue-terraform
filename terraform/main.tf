module "kms" {
  source = "key-management-service"
  region = "${var.region}"
  zone_key_name = "${var.key_zone}"
}