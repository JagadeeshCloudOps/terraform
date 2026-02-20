variable "environment" {
    type = string
    default = "dev"
    description = "The environment to deploy the EC2 instance for aicloudera project"
  
}

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "The RHEL 9 Image to use for the EC2 instance for aicloudera project"
  
}

variable "instance_type" {
    type = string
    description = "The type of EC2 instance to use for aicloudera project"
    default = "t3.micro"
  
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "terraform"
        Project= "aicloudera"
        terraform = "true"
        environment = "dev"
    }
    description = "Tags to apply to the EC2 instance for aicloudera project"
  
}

variable "sg_name" {
    type = string
    default = "allow-all-terraform-default"
}
variable "sg_description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
  
}
variable "sg_from_port" {
    type = number
    default = 0
}

variable "sg_to_port" {
    type = number
    default = 0
}
variable "sg_cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
  
}
variable "sg_tags" {
    type = map
    default = {
        name        = "allow-all-terraform" 
        Project= "aicloudera"
        terraform = "true"
        environment = "dev"
    }
  
}
