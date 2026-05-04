terraform {
  required_providers {

    archive = {
      version = "2.0.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "6.43.0"
    }
  }
  required_version = ">= 1.3.0"
}
