terraform {
  required_version = "> 0.13.0"

required_providers {
    aws = {
      version = "= 4.67.0"
      source = "hashicorp/aws"
    }
}
}