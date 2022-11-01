# Configure the AWS provider
terraform {
  backend "s3" {
    bucket = "esleirter-lemon"
    key    = "infrastructure/prod/lemontech/terraform.tfstate"
    region = "us-east-2"
  }
  required_providers {
    aws = ">= 4.37.0"
  }
}

