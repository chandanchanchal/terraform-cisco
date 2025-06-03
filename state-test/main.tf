# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 5.0" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "ap-southeast-2"
}

# Resource Block
resource "aws_instance" "ec2-web" {
  #ami           = "ami-0533f2ba8a1995cf9"
  ami            =  "ami-06a0b33485e9d1cf1" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}

resource "aws_instance" "ec2-db" {
  #ami           = "ami-0533f2ba8a1995cf9"
  ami            =  "ami-06a0b33485e9d1cf1" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}
