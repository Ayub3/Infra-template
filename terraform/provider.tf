terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {}
}

provider "aws" {
  region = var.region
  assume_role {
    role_arn = var.role_to_assume
  }
  default_tags {
    tags = {
      project     = var.project
      environment = var.env
    }
  }
}