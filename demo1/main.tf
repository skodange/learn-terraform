terraform {
  required_providers {
  aws = {
     source="hashicorp/aws"
     version="~> 3.27"
    }
  }
  
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region = "us-east-2"
}

resource "aws_instance" "app_server_shreehari" {
  ami = "ami-0e356ca0aa33d46d9"
  instance_type="t2.micro"
  
  tags = {
    Name = var.instance_name
  }
}





