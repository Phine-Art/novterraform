# Environment variables

variable "aws_region" {
  description = "AWS region to create resources in"
  type = string
}

variable "project_name" {
  description = "Name of the project"
  type = string
}

variable "environment" {
  description = "Environment to deploy resources to"
  type = string
}