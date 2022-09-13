##backend data for terraform
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  backend "remote" {
  organization = "Cloudquiz"

    workspaces {
      name = "AWS-Cloudquiz"
    }
  }
}

## random provider
provider "random" {}

## Provider us-east-1
provider "aws" {
    region = "us-east-1"
}