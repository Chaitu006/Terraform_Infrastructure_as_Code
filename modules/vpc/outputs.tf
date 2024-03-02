variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}
