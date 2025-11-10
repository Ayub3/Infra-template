variable "project" {
  type        = string
  description = "name of project"
}

variable "env" {
  type        = string
  description = "deployment environment"
}

variable "region" {
  type        = string
  description = "aws region"
}

variable "oidc_role" {
  type        = string
  description = "oidc role to assume"
}
