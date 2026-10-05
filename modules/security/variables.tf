variable "vpc_id" {
  description = "ID of the VPC where the security group will be created"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "CIDR block allowed to access SSH"
  type        = string
}