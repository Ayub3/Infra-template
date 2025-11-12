terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.9"
    }
  }
  backend "s3" {
    use_lockfile = true
  }
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