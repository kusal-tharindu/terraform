variable "ami_id" {
  type        = string
  description = "The ami id to use for the EC2 instance"
  default     = "ami-0f9de6e2d2f067fca "
}

variable "instance_type" {
  type        = string
  description = "The instance type to use for the EC2 instance"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "The key name to use for the EC2 instance"
  default     = null
}

variable "security_group_ids" {
  type        = list(string)
  description = "The security group ids to use for the EC2 instance"
  default     = []
}

variable "subnet_id" {
  type        = string
  description = "The subnet id to use for the EC2 instance"
  default     = null
}

variable "user_data" {
  type        = string
  description = "The user data to use for the EC2 instance"
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "The tags to use for the EC2 instance"
  default     = {}
}



