provider "aws" {
  region = "eu-north-1"
}
provider "aws" {
  alias = "east"
  region = "us-east-1"
}

module "vpc-1" {
  source = "./module-a"
  cidr-block-1 = "10.10.0.0/16"
}

module "vpc-2" {
  source = "./module-b"
#  providers = {
#    aws = aws.east
#  }
  cidr-block-2 = "10.20.0.0/16"
}

output "module-a-result" {
  value = module.vpc-1.result
}

output "module-b-result" {
  value = module.vpc-2.result-1
}
