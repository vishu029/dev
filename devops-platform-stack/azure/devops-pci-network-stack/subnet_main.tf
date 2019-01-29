# Creating a subnet
module "subnet_grp_pci_appgat" {
  source   = "git::https://github.com/vishu029/dev.git//devops-module-stack/azure/network/"
  address_spaces       = "${var.subnet_address_spaces_pci}"
  name                 = ["devops-${var.environment}-${var.region}-${var.subnet_name_pci}"]
  resource_group_name  = "devops-${var.environment}-${var.region}-${var.vnet_rg_name}"
  virtual_network_name = "devops-${var.environment}-${var.region}-${var.vnet_name}"
  network_security_group_id = "${module.network_security_group_pci_appgat.id}"
}

# Creating Network Security Group and Rules
module "network_security_group_pci_appgat" {
  source = "git::https://github.com/vishu029/dev.git//devops-module-stack/azure/security"
  security_group_name            = "devops-${var.environment}-${var.region}-${var.nsg_name_pci_appgat}"
  location                       = "${var.location}"
  resource_group_name            = "${module.resource_group.name}"
  
# Security Rules

  security_rule_name         = ["${var.security_rule_name_pci_appgat}"]
  priority                   = ["${var.priority_pci_appgat}"]
  direction                  = ["${var.direction_pci_appgat}"]
  access                     = ["${var.access_pci_appgat}"]
  protocol                   = ["${var.protocol_pci_appgat}"]
  source_port_range          = ["${var.source_port_range_pci_appgat}"]
  destination_port_range     = ["${var.destination_port_range_pci_appgat}"]
  source_address_prefix      = ["${var.source_address_prefix_pci_appgat}"]
  destination_address_prefix = ["${var.destination_address_prefix_pci_appgat}"]
}
