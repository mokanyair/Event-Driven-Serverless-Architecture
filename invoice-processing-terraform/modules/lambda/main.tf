resource "aws_lambda_function" "etl" {
  filename         = "${path.module}/../../lambda/lambda.zip"
  function_name    = "invoice_processor"
  handler          = "invoice_processor.lambda_handler"
  runtime          = "python3.10"
  role             = aws_iam_role.lambda_exec.arn
  source_code_hash = filebase64sha256("${path.module}/../../lambda/lambda.zip")

  environment {
    variables = {
      PROCESSED_BUCKET = var.processed_bucket
      SNS_TOPIC_ARN    = var.sns_topic_arn
    }
  }
}
