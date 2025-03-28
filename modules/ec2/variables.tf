variable "ami_id" {
    type = string
    description = <<-EOT
    The AMI ID to use for the EC2 instance. 
    This defaults to the latest ubuntu 22.04 LTS in us-east-1
    EOT
    default = "ami-0f9de6e2d2f067fca"
}

variable "instance_type" {
    type = string
    description = "The instance type to use for the EC2 instance"
    default = "t2.micro"
}

variable "key_name" {
    type = string
    description = "The key name to use for the EC2 instance"
    default = null
}

variable "security_group_ids" {
    type = list(string)
    description = "This is the security groups for this ec2"
    default = []
}

variable "subnet_id" {
    type = string
    description = "The subnet id to use for the EC2 instance"
    default = null
}

variable "user_data" {
    type = string
    description = "The user data to use for the EC2 instance"
    default = <<EOF
    #!/bin/bash
    if [ -f /etc/debian_version ]; then
        sudo apt update -y
    elif [ -f /etc/redhat-release]; then
        sudo yum update -y || sudo dnf update -y
    else
        echo "Unsupported Linux distribution"
        exit 1
    fi
    EOF
}   

variable "tags" {
    type = map(string)
    description = "The tags to use for the EC2 instance"
    default = {
        "Name" = "ec2-module"
    }
}