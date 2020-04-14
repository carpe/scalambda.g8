terraform {
  backend "s3" {
    region               = "$awsregion$"
    bucket               = "carpe-forms"
    workspace_key_prefix = "$name$"
    key                  = "$name$.tfstate"

    encrypt = true
  }
}

provider "aws" {
  region = "$awsregion$"
  # credentials fetched via default provider chain
}

# This module points to the terraform module generated by scalambda.
module "$name$" {
  source = "../target/terraform"

  # This will be the role that your function uses.
  # You can customize how your function gets a role (and much much more) via your build.sbt
  $functionName;format="snake,lower"$_lambda_role_arn = aws_iam_role.basic.arn
}