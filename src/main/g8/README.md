# $name$ #

A super cool project made with [Scalambda](https://github.com/carpe/scalambda)! 

## Deploying the Function

This project can be deployed straight away using the following commands:

1. `sbt scalambdaTerraform` - Generate the jars and TF module
1. `terraform init` - Initialize the Terraform (only required for first deployment)
1. `terraform apply` - Apply the Terraform