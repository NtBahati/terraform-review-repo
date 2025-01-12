terraform {

  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" # No change needed if you want 4.x
    }
  }

}