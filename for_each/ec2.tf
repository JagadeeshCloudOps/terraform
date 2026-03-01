resource "aws_instance" "aicloudera" {
#for ecah map element, create a resource with the key as the name and the value as the instance type
 # for_each = var.instances

 # for each element in the set, create a resource with the element as the name and the value as the instance type
 for_each = toset(var.instances)

  ami           = var.ami_id
  #instance_type = each.value
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.aicloudera_allow_all.id]
    tags = {
    Name = "${each.key}.${var.domine_name}"
}
}

resource "aws_security_group" "aicloudera_allow_all" {
    name = var.Sg_name
    description = var.sg_description

    egress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr_block
    ipv6_cidr_blocks = ["::/0"]
  }

   ingress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = "-1"
    cidr_blocks      = var.sg_cidr_block
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.sg_tags
  
}
