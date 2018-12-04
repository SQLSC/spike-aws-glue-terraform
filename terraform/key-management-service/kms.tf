resource "aws_kms_key" "zone_key" {
  provider = "${var.provider}"
  deletion_window_in_days = 7
}

resource "aws_kms_alias" "zone_key_alias" {
  provider = "${var.provider}"
  target_key_id = "${aws_kms_key.zone_key.id}"
  name = "${var.zone_key_name}"
}