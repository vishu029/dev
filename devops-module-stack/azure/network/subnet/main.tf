resource "azurerm_subnet" "snet" {
  count                     = "${length(var.address_spaces)}"
  name                      = "${var.name[count.index]}-${format(var.count_format, count.index + 1)}"
  resource_group_name       = "${var.resource_group_name}"
  virtual_network_name      = "${var.virtual_network_name}"
  address_prefix            = "${var.address_spaces[count.index]}"
  network_security_group_id = "${var.network_security_group_id}"
}
