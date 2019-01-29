
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.vnet_name}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  address_space       = ["${var.vnet_address_space}"]
  dns_servers         = ["${var.vnet_dns_servers}"]
}

module "subnet" {
  source = "./subnet"

  resource_group_name  = "${var.resource_group_name}"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  name                 = ["${var.subnet_name}"]
  address_spaces       = ["${var.subnet_address_spaces}"]
}

