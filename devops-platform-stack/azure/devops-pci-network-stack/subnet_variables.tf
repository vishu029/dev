########################################  Subnet variables  #########################################
variable "subnet_name_pci_appgat" {
  default     = "pcigate-snet"
  description = "Subnet to be associated with the application gateway"
}

variable "subnet_address_spaces_pci_appgat" {
  default     = []
  description = "PCI Application Gateway subnet address spaces."
}

#########################################   NSG Variables  #########################################
variable "nsg_name_pci_appgat" {
  
}

variable "security_rule_name_pci_appgat" {
#Source_Direction_Destination_DestinationPort
  default = []
}

variable "priority_pci_appgat" {
  default = []  
}

variable "direction_pci_appgat" {
  default = []  
}

variable "access_pci_appgat" {
  default = []
}

variable "protocol_pci_appgat" {
  default = []  
}

variable "source_port_range_pci_appgat" {
  default = [] 
}

variable "destination_port_range_pci_appgat" {
  default = [] 
}

variable "source_address_prefix_pci_appgat" {
  default = []
}

variable "destination_address_prefix_pci_appgat" {
  default = []
}
