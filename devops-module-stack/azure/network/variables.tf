variable "resource_group_name" {}

variable "location" {
  default = "uksouth"
}

variable "vnet_name" {}

variable "vnet_address_space" {
  default = "10.0.0.0/16"
}

variable "vnet_dns_servers" {
  default     = []
  description = "Optional list of DNS server names"
}

variable "subnet_name" {
  default     = []
  type        = "list"
  description = "List of names of subnets"
}

variable "subnet_count_format" {
  default     = "%02d"
  description = "Subnet name numbering format"
}

variable "subnet_address_spaces" {
  default     = []
  description = "Subnet list of address spaces"
}

