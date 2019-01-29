resource "azurerm_storage_account" "main" {
  name                     = "${var.storage_name}"
  location                 = "${var.location}"
  resource_group_name      = "${var.resource_group_name}"
  account_kind             = "${var.storage_account_kind}"
  account_tier             = "${var.storage_account_tier}"
  account_replication_type = "${var.account_replication_type}"
  access_tier              = "${var.storage_access_tier}"
  enable_blob_encryption   = "${var.storage_enable_blob_encryption}"
}

module "storage_container" {
  source = "./container"

  resource_group_name = "${var.resource_group_name}"
  storage_name        = "${azurerm_storage_account.main.name}"
  container_names     = ["${var.container_names}"]
}
