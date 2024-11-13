// name must match
# variable "public_security_group" {
#   default = "public-sg"
# }

variable "vpc_cidr" {
  default = "10.15.0.0/16"
}

variable "availability_zone" {
  default = {
    az_a = "ca-central-1a"
    az_b = "ca-central-1b"
  }
  # default = ["ca-central-1a", "ca-central-1b"]
}

variable "private_subnet_cidr" {
  default = {
    az_a = "10.15.1.0/24"
    az_b = "10.15.2.0/24"
  }
  # default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnet_cidr" {
  default = {
    az_a = "10.15.3.0/24"
    az_b = "10.15.4.0/24"
  }
  # default = ["10.0.3.0/24", "10.0.4.0/24"]
}

