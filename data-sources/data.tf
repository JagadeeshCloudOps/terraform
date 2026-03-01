data "aws_ami" "aicloudera_ami" {
  most_recent = true
  owners = ["973714476881"] # this is the AWS account ID for RHEL images

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
 filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  
}

data "aws_instance" "aicloudera" {
  instance_id = "i-07d5a320a36a2d4ed"
  }
