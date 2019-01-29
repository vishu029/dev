variable "security_rule_name" {
  default = []
}

variable "resource_group_name" {}

variable "security_group_name" {}

variable "protocol" {
  default = []
}

variable "source_port_range" {
  default = []
}

variable "destination_port_range" {
  default = []
}

variable "source_address_prefix" {
  default = []
}

variable "destination_address_prefix" {
  default = []
}

variable "priority" {
  default = []
}

variable "direction" {
  default     = []
  description = "The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are Inbound and Outbound"
}

variable "access" {
  default     = []
  description = " Specifies whether network traffic is allowed or denied. Possible values are Allow and Deny"
}

