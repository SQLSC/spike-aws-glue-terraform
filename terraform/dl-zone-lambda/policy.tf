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