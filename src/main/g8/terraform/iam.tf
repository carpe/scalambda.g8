resource "aws_iam_role" "basic" {
  name_prefix = "ScalambdaBasicLambdaRole"
  description = "Role for a HelloWorld Lambda Function created by Scalambda, in ${terraform.workspace}"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
  {
    "Effect": "Allow",
    "Principal": {
      "Service": "lambda.amazonaws.com"
      },
    "Action": "sts:AssumeRole"
  }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "adapter_xray" {
  role = aws_iam_role.basic.name
  policy_arn = data.aws_iam_policy.xray_policy.arn
}

resource "aws_iam_role_policy_attachment" "adapter_logging" {
  role = aws_iam_role.basic.name
  policy_arn = data.aws_iam_policy.logging_policy.arn
}


/**
####################
###   Policies   ###
####################
*/

data "aws_iam_policy" "xray_policy" {
  // this policy grants access to xray
  arn = "arn:aws:iam::aws:policy/AWSXrayWriteOnlyAccess"
}

data "aws_iam_policy" "logging_policy" {
  // this policy grants access to cloudwatch logs
  arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}