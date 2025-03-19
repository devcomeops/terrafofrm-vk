provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "test" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = "data.aws_security_group.sg.id"

  tags = {
    Name = "Test Server"
  }
}

data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]
}

data "aws_security_group" "sg" {
  name = "allow-all"
}