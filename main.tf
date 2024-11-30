terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.78.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "fristec2" {
  ami           = "ami-0614680123427b75e"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0cc16a57cbd513f4f"
}