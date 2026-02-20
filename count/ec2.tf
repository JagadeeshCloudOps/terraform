resource "aws_instance" "aicloudera" {
  count = 10
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  tags = {
    Name = var.instances[count.index]
    Project= "aicloudera"
  }
} 

resource "aws_security_group" "allow_tls" {
  name        = "allow-all-aicloudera" # this is for AWS account
  description = "Allow TLS inbound traffic and all outbound traffic"
 

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  tags = {
    name        = "allow-all-aicloudera" 
    Project= "aicloudera"
  }
}