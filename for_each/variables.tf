


# variable "instances" {
#     type = map(string)
#     default = {
#         mongodb = "t3.micro"
#         redis = "t3.micro"
#         mysql = "t3.micro"
       
#     }
  
# }

variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql"]
  
}



variable "zone_id" {
  type = string
  default = "Z03105852W3XURFMIPYMJ"
}


variable "domine_name" {
    type = string
    default = "aicloudera.in"
  
}

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "The RHEL 9 Image to use for the EC2 instance for aicloudera project"
  
}

# variable "ec2_intance_type" {
#     type = string
#     default = "t3.micro"
#     description = "The type of EC2 instance to use for aicloudera project"  
  
# }

# variable "ec2_tags" {
#     type = map(string)
#     default = {
#         Name = "frontend"
#         project = "aicloudera"
#         terraform = true
#         environment = "dev"

#     }
#     description = "The tags to apply to the EC2 instance for aicloudera project"
# }

variable "Sg_name" {
    type = string
    default = "aicloudera_allow_all"
  
}
variable "sg_description" {
    type = string
    default = "Allow all inbound and outbound traffic for aicloudera instances"
  
}

variable "sg_from_port" {
    default = 0
    type = number
  
}

variable "sg_to_port" {
    default = 0
    type = number

}

variable "sg_cidr_block" {
    type = list(string)
    default = ["0.0.0.0/0"]
  
}

variable "sg_tags" {
    type = map(string)
    default = {
        Name = "aicloudera_allow_all"
        project = "aicloudera"
        terraform = true
        environment = "dev"
    }
    description = "The tags to apply to the security group for aicloudera project"
}