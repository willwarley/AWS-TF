# Create an AWS Lambda function
resource "aws_lambda_function" "lambda_function" {
  function_name = var.lambda_function_name
  runtime       = var.lambda_runtime
  handler       = var.lambda_handler
  role          = var.lambda_role_arn
  timeout       = var.lambda_timeout

  tags = var.tags
}
