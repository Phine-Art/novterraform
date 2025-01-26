# configure aws provider
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Automation  = "Terraform"
      Project     = var.project_name
      Environment = var.environment
    }
  }
}