resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  description = "Allow HTTP and ssh"
  vpc_id      = aws_vpc.main.id
  ingress {
    description = "HTTP"
    from_port     = 80
    to_port       =  80
    protocol      = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "ssh"
    from_port     = 22
    to_port       = 22
    protocol      = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all egress"
    from_port = 0
    to_port =   0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Allow HTTP AND SSH"
  }
}
