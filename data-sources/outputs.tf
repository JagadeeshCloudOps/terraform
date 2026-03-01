output "ami" {
    value = data.aws_ami.aicloudera_ami.id
    description = "The RHEL 9 Image to use for the EC2 instance for aicloudera project"
  
}

output "aicloudera_instance" {
  value = data.aws_instance.aicloudera.id
    description = "The ID of the EC2 instance for aicloudera project"
}