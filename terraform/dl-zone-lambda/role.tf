resource "aws_iam_role" "lambda_role" {
  assume_role_policy = "${data.aws_iam_policy_document.assume_role.json}"
  name = "${var.lambda_role_name}"
}

resource "aws_iam_role_policy_attachment" "lambd_role_policy_attachment" {
  policy_arn = "${aws_iam_policy.lambda_policy.arn}"
  role = "${aws_iam_role.lambda_role.name}"
}