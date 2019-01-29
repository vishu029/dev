# For creating the remote state storage
terraform {
  backend "azurerm" {
  }
}

# Creating a resource group for associating further resources with it.
module "resource_group" {
  source   = "git::https://git@github.com:vishu029/devops.git//devops-module-stack/azure/resource-group"
  name     = "devops-${var.environment}-${var.region}-${var.vnet_rg_name}"
  location = "${var.location}"
}

#creating a Virtual Network

module "virtual_network_group" {
  source                = "git::https://git@github.com:vishu029/devops.git//devops-module-stack/azure/network"
  vnet_name             = "devops-${var.environment}-${var.region}-${var.vnet_name}"
  location              = "${var.location}"
  resource_group_name   = "${module.resource_group.name}"
  vnet_address_space    = "${var.vnet_address_space}"
 }
