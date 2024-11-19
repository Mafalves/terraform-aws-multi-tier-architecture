variable "vpc_id" {
  description = "VCP ID"
  type        = string
}

variable "security_group" {
  type = map(object({
    name        = string
    description = string
  }))
}

variable "ingress_rules" {
  type = map(object({
    cidr_blocks = string
    from_port   = number
    to_port     = number
    protocol    = string
    sg_name = string
  }))
}

variable "egress_rules" {
  type = map(object({
    cidr_blocks = string
    from_port   = number
    to_port     = number
    protocol    = string
    sg_name = string
  }))
}

