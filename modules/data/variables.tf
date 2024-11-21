variable "table_name" {
  description = "Name of the DynamoDB table - must be unique witin a region."
  type = string  
}

variable "attributes" {
  description = "The list of attribute definitions for the table."
  type = list(object({
    name = string
    type = string 
  }))
}

variable "hash_key" {
    description = "Attribute to use as hash (partition) key."
    type = string
}

variable "range_key" {
    description = "Attribute to use as the range (sorte) key."
    type = string
}


variable "billing_mode" {
  description = "Controls billing for read/read operations and how capacity is managed."
  type = string # Valid values are PROVISIONED AND PAY_PER_REQUEST.
}

# variable "write_capacity" {
#   description = "Nuber of write units for the table, if the billing_mode is PROVISIONED."
# }