locals {
    instance_name = "${var.name}-${var.environment}"
    instance_type = "t3.micro"
    ami_id = "ami-0220d79f3f480ecf5"
  common_tags = {
        Project = "aicloudera"
        terraform = "true"  
        environment = "dev"
  }
  ec2_final_tags = merge(local.common_tags, var.ec2_tags)
  sg_final_tags = merge(local.common_tags, var.sg_tags)

}