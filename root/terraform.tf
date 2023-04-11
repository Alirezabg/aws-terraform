terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
locals {
  tags = {
    environment = "root"
    terraform   = "true"
    owner       = "devops-team"
  }
}

provider "aws" {
 region = "us-east-1"
}
