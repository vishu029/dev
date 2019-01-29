variable "resource_group_name" {}
variable "virtual_network_name" {}

variable "name" {
  default     = []
  type        = "list"
  description = "Names of subnets"
}

variable "count_format" {
  default     = "%04d"
  description = "Subnet name numbering format"
}

variable "address_spaces" {
  default     = []
  description = "Subnet list of address spaces"
}

variable "network_security_group_id" {
  default     = ""
  description = "Optional, ID of network security group"
}

