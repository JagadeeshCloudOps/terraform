
variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "The RHEL 9 Image to use for the EC2 instance for aicloudera project"
  
}
variable "sg_name" {
    type = string
    default = "allow-all-terraform-default"
}

variable "ingress_rules" {
    default = [
        {
            port = 22
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            port = 80
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            port = 443
            cidr_blocks = ["0.0.0.0/0"]
        }
    ]
}
