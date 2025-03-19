variable "aws_instances" {
    default = {
       frontend = {}
       mysql = {}
       catalogue = {}
       redis = {}
       user = {}
       cart = {}
       mongodb = {}
       shipping = {}
       rabbitmq = {}
       payment = {}
       dispatch = {}
    }
 
}

resource "aws_instance" "instance" {
    for_each = [ "var.instances" ]
    ami = "ami-08b5b3a93ed654d19"
    vpc_security_group_ids = [ "sg-012f6ef3ea01a686a" ]
    instance_type = "t2.micro"
  

  tags = {
    Name = each.key
  }
}

resource "aws_route53_record" "each.key" {
  zone_id = "Z1010873GPE47CKCHIZ9"
  name    = "${each.key}-dev.devopspractice.info"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance[each.key].privare_ip]
}