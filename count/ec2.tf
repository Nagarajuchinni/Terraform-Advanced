resource "aws_instance" "Master"{
ami = var.ami_id
count = 3
instance_type  = var.instance_type
tags = {
    Name = var.instances[count.index]
} 
}

resource "aws_security_group" "allow_all" {
name = "allow_all"
description = "security for ec2"

ingress{
    from_port = var.from_port
    to_port = var.to_port
    protocol = var.protocol
    cidr_blocks = var.cidr_blocks
}

egress{
    from_port = 0
    to_port = 0
    protocol = var.protocol
    cidr_blocks = var.cidr_blocks
}
tags = {
    Name = "allow_all"
}
}