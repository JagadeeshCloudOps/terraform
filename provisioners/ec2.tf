resource "aws_instance" "example" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  # self is the special variable that refers to the current resource being created. In this case, it refers to the aws_instance resource. By using self.public_ip, we can access the public IP address of the EC2 instance that is being created. The provisioner will execute the command after the instance is created and will write the public IP address to a file named inventory.ini.

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > inventory.ini"
    
  }
  provisioner "local-exec" {
    when = destroy
    command = "echo Destroying instance with public IP ${self.public_ip}"
    
  }
  provisioner "local-exec" {
    when = destroy
    command = "echo > inventory.ini"
  }

  tags = {
    Name = "provisioner-demo"
    Project= "aicloudera"
  }
} 

resource "aws_security_group" "allow_tls" {
  name        = "allow-all-terraform" # this is for AWS account
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
    name        = "allow-all-terraform-provisioner-demo" 
    Project= "aicloudera"
  }
}