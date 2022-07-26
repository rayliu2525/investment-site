# web security group

resource "aws_security_group" "web-sg" {
  name        = "web_sg"
  vpc_id      = var.VPC_id

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.VPC_CIDR_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

# ALB Security Group