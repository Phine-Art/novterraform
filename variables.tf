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

# rds variables
variable "database_snapshot_identifier" {
  description = "The identifier of the database snapshot to restore the database from"
  type        = string

}

variable "database_instance_class" {
  description = "The instance class of the database instance"
  type        = string

}

variable "database_instance_identifier" {
  description = "The identifier of the database instance"
  type        = string

}

# ALB variables
variable "ssl_certificate_arn" {
  description = "The ARN of the SSL certificate to use for HTTPS"
  type        = string

}

# sns variables
variable "operator_email" {
  description = "The email address of the operator to receive notifications"
  type        = string

}

# asg variables
variable "launch_template_name" {
  description = "The name of the launch template"
  type        = string
  default     = "mobann-launch-template"
}

variable "ec2_image_id" {
  description = "The ID of the AMI to use for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "The instance type of the EC2 instances"
  type        = string
  default     = "t3.micro"
}

variable "ec2_key_name" {
  description = "The name of the EC2 key pair to use for the EC2 instances"
  type        = string
  default     = "nov24"
}

# route53 variables
variable "domain_name" {
  description = "The domain name to use for the Route 53 hosted zone"
  type        = string
  default     = "mobanntech.com"
}

variable "record_name" {
  description = "sub domain name"
  type        = string
  default     = "www"

}