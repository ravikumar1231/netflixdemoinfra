provider "aws" {
region = "us-east-2"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-04985531f48a27ae7"
instance_type = "t2.medium"
key_name = "raviteja"
vpc_security_group_ids = ["sg-0a86c1963ef465cb4"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
