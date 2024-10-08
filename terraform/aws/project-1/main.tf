provider "aws" {
  region = "us-east-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
} 

# resource "<provider>_<resource_type>" "name" {
#     config options.....
#     key = "value"
#     key2 = "another value"
# }

resource "aws_instance" "my-first-server" {
  ami = "ami-0e86e20dae9224db8"
  instance_type = "t2.micro"
  tags = {
    Name = "ubuntu"
  }
} 

# resource "aws_instance" "my-second-server" {
#   ami =  "ami-0e86e20dae9224db8"
#   instance_type = "t2.micro"
#   tags = {
#     Name = "ubuntu2"
#   }
# } 

resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "production"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "prod-subnet"
  }
}

resource "aws_vpc" "second-vpc" {
  cidr_block = "10.1.0.0/16"
  tags = {
    Name = "dev"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id = aws_vpc.second-vpc.id
  cidr_block = "10.1.1.0/24"
  tags = {
    Name = "dev-subnet"
  }
}