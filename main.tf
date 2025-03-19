provider "aws" {
  region = "us-east-1"

}

resource "aws_instance" "frontend" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "frontend"
  }
}


resource "aws_instance" "mysql" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "catalogue" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_instance" "redis" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "redis"
  }
}
resource "aws_instance" "user" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "user"
  }
}
resource "aws_instance" "cart" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "cart"
  }
}

resource "aws_instance" "mongodb" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "mongodb"
  }
}
resource "aws_instance" "shipping" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "shipping"
  }
}

resource "aws_instance" "rabbitmq" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_instance" "payment" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "payment"
  }

}
resource "aws_instance" "dispatch" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "dispatch"
  }
}   