terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket         = "my-team-terraform-state"
    key            = "arch2/terraform.tfstate"   # The path within the bucket
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

