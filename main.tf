provider "aws" { 
 region = "${var.my_region}"

}
resource "aws_instance" "jin" {
    count = "${var.instance_count}"
    ami = "${var.my_ami}"
   instance_type="${var.my_instance_type}"
tags={Name = "${var.instance_name}-${count.index+1}"}
  vpc_security_group_ids = ["${aws_security_group.instance_sg_http_ssh.id}"]
}


resource "aws_security_group" "instance_sg_http_ssh" {
  name = "instance_sg_http_ssh"
  description = "Web Security Group"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}