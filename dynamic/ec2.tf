resource "aws_instance" "aicloudera" {
    ami = var.ami_id
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.aicloudera_allow_all.id]
    tags = {
        Name = "aicloudera"
        Environment = "dev"
    }
}

resource "aws_security_group" "aicloudera_allow_all" {
    name = var.sg_name
    description = "Allow all traffic for aicloudera instance"
    
    # dynamic block for ingress and egress rules here ingress and eggress are special variable names that are used to define the ingress and egress rules for the security group. The dynamic block allows us to define the rules in a more flexible way, we can use variables to define the rules and then use those variables in the dynamic block to create the rules for the security group.
    dynamic "ingress" {
        for_each = var.ingress_rules
        content {
            from_port = ingress.value.from_port
            to_port = ingress.value.to_port
            protocol = ingress.value.protocol
            cidr_blocks = ingress.value.cidr_blocks
        } 
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
