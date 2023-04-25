terraform {
  required_providers {
    aws = {
      version = "4.62.0"
      source  = "hashicorp/aws"
    }

    archive = {
      version = "2.0.0"
    }
  }
  required_version = ">= 1.3.0"
}
