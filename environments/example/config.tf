terraform {
  backend "s3" {
    allowed_account_ids = ["__ACCOUNT_ID__"]
    bucket              = "__STATE_BUCKET__"
    key                 = "terraform.tfstate"
    region              = "eu-north-1"
    dynamodb_table      = "__DYNAMODB_TABLE__"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = "~> 1.8"
}

provider "aws" {
  allowed_account_ids = ["__ACCOUNT_ID__"]
  region              = "eu-north-1"
}
