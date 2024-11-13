variable "availability_zone" {
  description = "the availibility zone for subnets"
  type        = map(string)
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type = map(string)
}

variable "public_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = map(string)
}

variable "tags" {
  default     = {}
  description = "Tags to apply to resources"
  type        = map(string)
}


