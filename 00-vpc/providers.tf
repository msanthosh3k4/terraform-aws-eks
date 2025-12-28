terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
      bucket = "82s-terra-remote-state-dev"
      key    = "expense-dev-eks-vpc" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
      region = "us-east-1"
      dynamodb_table = "82s-terra-remote-state-dev"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
