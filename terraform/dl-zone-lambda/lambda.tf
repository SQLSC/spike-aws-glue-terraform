resource "aws_lambda_function" "default_lambda" {
  provider = "aws.default"
  function_name = "${var.lambda_name}"
  handler = "${var.lambda_handler}"
  role = "${aws_iam_role.lambda_role.arn}"
  runtime = "${var.lambda_runtime}"
  filename = "${var.lambda_filename}"
  source_code_hash = "${base64sha256(file(var.lambda_filename))}"
}

resource "aws_lambda_permission" "default_lambda_permission" {
  provider = "aws.default"
  statement_id = "${var.statement_id}"
  action = "${var.lambda_action}"
  function_name = "${aws_lambda_function.default_lambda.function_name}"
  principal = "${var.principal}"
  source_arn = "${var.source_arn}"
}