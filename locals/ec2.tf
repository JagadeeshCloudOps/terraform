resource "aws_instance" "example" {
  ami           = local.ami_id
  instance_type = local.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = local.ec2_final_tags
} 

resource "aws_security_group" "allow_all" {
  name        = "allow-all-terraform-aicloudera-locals" # this is for AWS account
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


  tags = local.sg_final_tags
}