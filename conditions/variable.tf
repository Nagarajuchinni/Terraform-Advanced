variable "ami_id" {
  type = string
  default = "ami-0d27e0fb3bac4d724"
  description = "this is ec2 variable"
}

/* variable "instance_type" {
  #default = "t3.micro"
} */

variable "environment" {
  default = "dev"
}

variable "ec2_tags" {
  type = map
  default = {
    project = "expense"
    component = "backend"
    env = "dev"
  }
}

variable "to_port" {
  default = "22"
}

variable "from_port" {
  default = "22"
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "protocol" {
  default = "tcp"
}