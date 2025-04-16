provider "aws" {
region = "us-west-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-067198c5ae913ba30"
instance_type = "t2.medium"
key_name = "AMAZON"
vpc_security_group_ids = ["sg-0f549aecad2338331"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
