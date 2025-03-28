ami_id = "ami-0f9de6e2d2f067fca"
instance_type = "t2.micro"
key_name = "kp-nv-nvms-test-stonebranch-01"
security_group_ids = [ "sg-05a4afd7a6345e663" ]
subnet_id = "subnet-0c64e9a918bdd8f28"

user_data = <<EOF
#!/bin/bash
# update the system
sudo apt update -y 2>&1 >> /tmp/initial-setup.log
EOF

tags = {
    "Name" = "ec2-module"
    "Environment" = "dev"
}


