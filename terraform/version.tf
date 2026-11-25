terraform {
  required_version = ">= 1.10.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Remote state (create the bucket first, see README)
  backend "s3" {
    bucket       = "<your-state-bucket>"
    key          = "ecs-cicd/terraform.tfstate"
    region       = "ap-south-2"
    use_lockfile = true # S3 native locking, no DynamoDB needed
    encrypt      = true
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project   = var.project_name
      ManagedBy = "terraform"
    }
  }
}
