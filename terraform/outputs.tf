output "kms_key_arn" {
  value = "${module.kms.kms_arn}"
}

output "raw_zone_arn" {
  value = "${module.raw-data-zone.zone_arn}"
}