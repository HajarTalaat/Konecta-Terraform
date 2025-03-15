terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "arch2" {
  source             = "./modules/arch2"
  region             = var.region
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  instance_type      = var.instance_type
  ami                = var.ami
  key_name           = var.key_name
  allowed_ssh_cidr   = var.allowed_ssh_cidr
}
