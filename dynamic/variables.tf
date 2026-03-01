
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
            from_port = 22
            to_port = 0
            protocol = "-1"
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port = 80
            to_port = 0
            protocol = "-1"
            cidr_blocks = ["0.0.0.0/0"]
        },
        {
            from_port = 443
            to_port = 0
            protocol = "-1"
            cidr_blocks = ["0.0.0.0/0"]
        }
    ]
}
