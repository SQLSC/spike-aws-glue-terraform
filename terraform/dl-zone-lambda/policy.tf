data "aws_iam_policy_document" "assume_role" {
  "statement" {
    sid = "BitvvaAssumeLambdaRole"
    effect = "Allow"
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      identifiers = [
        "lambda.amazonaws.com"
      ]
      type = "Service"
    }
  }
}

data "aws_iam_policy_document" "lambda_policy"{
  statement {
    sid = "BitvvaWriteLogs"
    effect = "Allow"
    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ]
    resources = [
      "arn:aws:logs:${var.region}::*"
    ]

  }
}

resource "aws_iam_policy" "lambda_policy" {
  name = "${var.policy_name}"
  policy = "${data.aws_iam_policy_document.lambda_policy.json}"
}

