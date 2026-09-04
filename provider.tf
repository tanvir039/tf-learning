terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.54.0"
    }
  }


  backend "s3" {
    bucket         = "terraform-state-tanvir"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
  }
}
# provider "aws" {
#   # Configuration options
# }