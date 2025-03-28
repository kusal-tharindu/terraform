#call the ec2 module

module "ec2_instance" {
    source = "../modules/ec2"
    ami_id = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    security_group_ids = var.security_group_ids
    subnet_id = var.subnet_id
    user_data = var.user_data
    tags = var.tags
}

resource "local_file" "ec2_instance_details" {
    content = <<EOF
    EC2 Instance ID: ${module.ec2_instance.ec2_instance_id}
    EC2 Instance Public IP: ${module.ec2_instance.ec2_instance_public_ip}
    EOF
    filename = "ec2_instance_details.txt"
}