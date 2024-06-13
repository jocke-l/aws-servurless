terraform {
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
