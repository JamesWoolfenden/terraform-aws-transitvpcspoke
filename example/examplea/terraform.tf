terraform {
  required_providers {
    aws = {
      version = "4.10.0"
      source  = "hashicorp/aws"
    }

    archive = {
      version = "2.0.0"
    }
  }
  required_version = ">=0.14.8"
}
