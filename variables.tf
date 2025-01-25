# Environment variables

variable "aws_region" {
  description = "AWS region to create resources in"
  type        = string
}

variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Environment to deploy resources to"
  type        = string
}

# VPC variables
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_az1_cidr_block" {
  description = "CIDR block for the public subnet in availability zone 1"
  type        = string
}

variable "public_subnet_az2_cidr_block" {
  description = "CIDR block for the public subnet in availability zone 2"
  type        = string
}

variable "private_app_subnet_az1_cidr_block" {
  description = "CIDR block for the private app subnet in availability zone 1"
  type        = string
}

variable "private_app_subnet_az2_cidr_block" {
  description = "CIDR block for the private app subnet in availability zone 2"
  type        = string
}

variable "private_data_subnet_az1_cidr_block" {
  description = "CIDR block for the private data subnet in availability zone 1"
  type        = string
}

variable "private_data_subnet_az2_cidr_block" {
  description = "CIDR block for the private data subnet in availability zone 2"
  type        = string
}

# Security group variables
variable "ssh_location" {
  description = "The IP address that can be used to SSH to the EC2 instances"
  type        = string
  
}