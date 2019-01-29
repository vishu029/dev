

# Creating a pci resource group for associating further resources with it.
module "resource_group" {
  source   = "git::https://github.com/vishu029/dev.git//devops-module-stack/azure/common/resource-group"
  name     = "devops-${var.environment}-${var.region}-${var.resource_group_name}"
  location = "${var.location}"
}

# Creating a storage group which will create a storage account and storage containers
module "storage_group" {
  source                         = "git::https://github.com/vishu029/dev.git//devops-module-stack/azure/storage"
  storage_name                   = "${var.environment}${var.region}${var.storage_account_name}"
  location                       = "${var.location}"
  resource_group_name            = "${module.resource_group.name}"
  storage_account_kind           = "${var.storage_account_kind}"
  storage_enable_blob_encryption = "${var.storage_enable_blob_encryption}"
  container_names                = ["${var.environment}-${var.region}-${var.container_names[0]}", "${var.environment}-${var.region}-${var.container_names[1]}"]
}
