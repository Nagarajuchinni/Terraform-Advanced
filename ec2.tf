resource "aws_instance" "Master"{
ami = "ami-0d27e0fb3bac4d724"
instance_type  = "t3.micro"
tags = {
    Name = "Master"
    Purpose = "practice"
    }
}

resource "aws_security_group" "allow_all" {
name = "allow_all"
description = "security for ec2"

ingress{
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

egress{
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
tags = {
    Name = "allow_all"
}
}