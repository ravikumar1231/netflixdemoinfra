provider "aws" {
region = "us-west-2"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0f4fe28e9d0154aec"
instance_type = "t2.medium"
key_name = "hcp"
vpc_security_group_ids = ["sg-0f6a266aa4dcf8de4"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
