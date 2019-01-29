# Creating a resource group for associating further resources with it.
module "resource_group" {
  source   = "git::https://github.com/vishu029/dev.git//devops-module-stack/azure/common/resource-group"
  name     = "devops-${var.environment}-${var.region}-${var.vnet_rg_name}"
  location = "${var.location}"
}

#creating a Virtual Network

module "virtual_network_group" {
  source                = "git::https://github.com/vishu029/dev.git//devops-module-stack/azure/network"
  vnet_name             = "devops-${var.environment}-${var.region}-${var.vnet_name}"
  location              = "${var.location}"
  resource_group_name   = "${module.resource_group.name}"
  vnet_address_space    = "${var.vnet_address_space}"
 }
