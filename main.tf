provider "aws" {
  region = "us-east-1"

}

resource "aws_instance" "test" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "Test Server"
  }
}