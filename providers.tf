terraform {
  required_providers {
    aws={
        source = "hashicorp/aws"
        version ="~> 5.42.0"
    }    
  }
  backend "local" {
    path = "C:/ITM_AWS/itmiacstate.tfstate"
  }
}

provider "aws" {
    region = var.aws_region
    shared_credentials_file = var.shared_credentials_file
    profile = var.aws_profile
}