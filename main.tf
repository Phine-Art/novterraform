# Terraform AWS Provider
provider "aws" {
    region = "us-west-2"
}

# AWS Instance
resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
}

# Output
output "public_ip" {
    value = aws_instance.example.public_ip
}

# create a file called backend.tf
# store the terraform state in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "mobann-terraform-remote-state"
    key            = "mobann-app/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-state-lock-mobann"
  }
}

