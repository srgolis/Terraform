provider "aws" {
  region = "eu-west-2"
}

terraform {
  required_version = "<= 1.5.4" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "<= 6.0.0" #Forcing which version of plugin needs to be used.
      source  = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "awsb50.xyz"
    key    = "myterraform.tfstate"
    region = "us-east-1"
  }
}