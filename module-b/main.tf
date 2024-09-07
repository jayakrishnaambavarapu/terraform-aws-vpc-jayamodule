terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.61.0"
    }
  }
}

resource "aws_vpc" "jaya-vpc" {
  cidr_block = var.cidr-block-2
}

