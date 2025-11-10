terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.9"
    }
  }
}

provider "aws" {
  region = var.region
  assume_role {
    role_arn = var.oidc_role
  }
  default_tags {
    tags = {
      project     = var.project
      environment = var.env
    }
  }
}