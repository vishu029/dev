terraform {
}

resource "azurerm_storage_container" "main" {
  count                 = "${length(var.container_names)}"
  name                  = "${var.container_names[count.index]}"
  resource_group_name   = "${var.resource_group_name}"
  storage_account_name  = "${var.storage_name}"
  container_access_type = "${var.container_access_type}"
}

