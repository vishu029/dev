variable "module_base" {
  default = "git@github.com:vishu029/devops/devops-module-stack"
}

###Environment Specific Variables : To be picked from tfvars file
variable "environment" {}
variable "region" {}
variable "location" {}

### resource-group variables
variable "vnet_rg_name" {
  default     = "pci-rg"
  description = "Devops Resource group which will contain the PCI network."
}

### virtual network variables

variable "vnet_name" {
  default     = "pci-vnet-0001"
  description = "Devops PCI virtual network"
}

variable "vnet_address_space" {
  default     = "10.105.32.0/20"
  description = "Address space of the Devops virtual network."
}
