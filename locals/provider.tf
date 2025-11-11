terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.19.0"
    }
  }

   backend "s3" {
    bucket = "daws86s-s3-bucket"
    key    = "locals-demo"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
    region = "us-east-1"
  # Configuration options
}