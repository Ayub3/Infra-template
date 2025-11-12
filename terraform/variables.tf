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

variable "role_to_assume" {
  type        = string
  description = "oidc role to assume"
}
