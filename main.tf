terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.58.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

resource "aws_vpc" "myapp-vpc" {
    cidr_block = "192.168.0.0/16"
    tags = {
      "Name" = "myapp-vpc"
    }
}

resource "aws_subnet" "myapp-pub-subnet" {
    cidr_block = "192.168.0.0/24"
    vpc_id = aws_vpc.myapp-vpc.id
    tags = {
      "Name" = "myapp-pub-subnet"
    }

}
#sample comment
