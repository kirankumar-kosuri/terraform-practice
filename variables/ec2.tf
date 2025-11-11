resource "aws_instance" "terraform" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]

    tags = var.ec2_tags 
  
}

resource "aws_security_group" "allow_all" {
  name   = "allow_all"

  egress {
    from_port        = var.engress_from_port
    to_port          = var.engress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
  }

  tags = {
    Name = "allow_all"
  }
}