terraform {
  backend "s3" {
    bucket       = "terraform-bucket-lzb-001"
    key          = "vpc/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true

  }
}

provider "aws" {
  region = var.aws-region
}