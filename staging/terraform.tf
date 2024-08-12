terraform {

  cloud {
    organization = "demo-atlantis"

    workspaces {
      name = "staging"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.62.0"
    }
  }

  required_version = ">= 1.1.0"
}