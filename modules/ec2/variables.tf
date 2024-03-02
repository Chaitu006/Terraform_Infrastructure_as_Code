variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type of the EC2 instance"
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet where the EC2 instance will be launched"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID for security group creation"
  type        = string
}

