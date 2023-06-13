/*Terraform definition..*/
terraform {
  required_version = ">= 1.4.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.1"
    }
  }

  /*Backend definition..*/
  backend "local" {
    path = "./states/terraform.tfstate"
  }
}

/*Provider definition..*/
provider "aws" {
  region = "eu-central-1"
}
