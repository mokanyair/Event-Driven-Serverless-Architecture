resource "aws_lambda_function" "etl" {
  function_name = "${var.project_name}-etl"
  role          = aws_iam_role.lambda_role.arn
  handler       = "invoice_processor.lambda_handler"
  runtime       = "python3.12"

  filename         = "lambda.zip"
  source_code_hash = filebase64sha256("lambda.zip")

  environment {
    variables = {
      PROCESSED_BUCKET = var.processed_bucket
      SNS_TOPIC_ARN    = var.sns_topic_arn
    }
  }
}
