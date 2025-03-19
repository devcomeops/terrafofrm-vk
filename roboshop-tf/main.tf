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

resource "aws_route53_record" "frontend" {
  zone_id = "Z1010873GPE47CKCHIZ9"
  name    = "frontend-dev.devopspractice.info"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.privare_ip]
}


resource "aws_instance" "mysql" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z1010873GPE47CKCHIZ9"
  name    = "mysql-dev.devopspractice.info"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.privare_ip]
}

resource "aws_instance" "catalogue" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z1010873GPE47CKCHIZ9"
  name    = "catalogue-dev.devopspractice.info"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.privare_ip]
}


resource "aws_instance" "redis" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z1010873GPE47CKCHIZ9"
  name    = "redis-dev.devopspractice.info"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.privare_ip]
}
resource "aws_instance" "user" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z1010873GPE47CKCHIZ9"
  name    = "user-dev.devopspractice.info"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.privare_ip]
}
resource "aws_instance" "cart" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z1010873GPE47CKCHIZ9"
  name    = "cart-dev.devopspractice.info"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.privare_ip]
}
resource "aws_instance" "mongodb" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z1010873GPE47CKCHIZ9"
  name    = "mongodb-dev.devopspractice.info"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.privare_ip]
}
resource "aws_instance" "shipping" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z1010873GPE47CKCHIZ9"
  name    = "shipping-dev.devopspractice.info"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.privare_ip]
}

resource "aws_instance" "rabbitmq" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "rabbitmq"
  }
}


resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z1010873GPE47CKCHIZ9"
  name    = "rabbitmq-dev.devopspractice.info"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.privare_ip]
}
resource "aws_instance" "payment" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "payment"
  }

}

resource "aws_route53_record" "payment" {
  zone_id = "Z1010873GPE47CKCHIZ9"
  name    = "payment-dev.devopspractice.info"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.privare_ip]
}
resource "aws_instance" "dispatch" {
  ami                    = "ami-08b5b3a93ed654d19"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-012f6ef3ea01a686a"]

  tags = {
    Name = "dispatch"
  }
}   

resource "aws_route53_record" "dispatch" {
  zone_id = "Z1010873GPE47CKCHIZ9"
  name    = "dispatch-dev.devopspractice.info"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.privare_ip]
}