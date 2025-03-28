//this is the main.tf file in the ec2 module to create an ec2 instance

resource "aws_instance" "ec2_instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = var.security_group_ids
  subnet_id = var.subnet_id
  user_data = var.user_data

  tags = var.tags
} 

