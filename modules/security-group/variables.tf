variable "vpc_id" {
  description = "VCP ID"
  type = string
}

variable "security_group" {
  description = "Name of the private security group"
  type = string
}

variable "cidr_ipv4" {
  description = "IPv4 CIDR used by security group"
  type = string
}

variable "ip_protocol" {
  description = "Protocol used by security group"
  type = string
}

variable "port_origin" {
  description = "Origin port associated with the group"
  type = number
}

variable "port_destination" {
  description = "Destination port associated with the group"
  type = number
}

