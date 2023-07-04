# Create an AWS Step Functions state machine
resource "aws_sfn_state_machine" "step_functions_state_machine" {
  name     = var.step_functions_state_machine_name
  role_arn = var.step_functions_role_arn
  definition = <<EOF
{
  "Comment": "A stepfunction hello world fucntion",
  "StartAt": "HelloWorld",
  "States": {
    "HelloWorld": {
      "Type": "Pass",
      "Result": "Hello, World! YEEEA!",
      "End": true
    }
  }
}
EOF

  tags = var.tags
}