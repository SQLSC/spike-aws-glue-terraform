output "lambda_arn" {
  value = "${aws_lambda_function.default_lambda.arn}"
}