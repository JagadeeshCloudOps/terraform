variable "name" {
    type = string
    default = "locals"
  
}

variable "environment" {
    type = string
    default = "dev"
  
}
variable "project" {
    type = string
    default = "aicloudera"
  
}

variable "common_tags" {
    default = {
        Project = "aicloudera"
        terraform = "true"  
        environment = "dev"
    }
}

variable "ec2_tags" {
    default = {
        Name = "frontend"
        environment = "uat"
    }
  
}

variable "sg_tags" {
    default = {
        Name = "allow-all-terraform" 
    }
  
}