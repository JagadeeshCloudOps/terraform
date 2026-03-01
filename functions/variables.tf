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