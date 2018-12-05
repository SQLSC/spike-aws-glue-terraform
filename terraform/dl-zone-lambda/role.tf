resource "aws_iam_role" "lambda_role" {
  assume_role_policy = "${data.aws_iam_policy_document.assume_role.json}"
  name = "${var.lambda_role_name}"
}