output "storage_name" {
  value = "${azurerm_storage_account.main.name}"
}

output "storage_id" {
  value = "${azurerm_storage_account.main.id}"
}

output "storage_primary_location" {
  value = "${azurerm_storage_account.main.primary_location}"
}

output "storage_secondary_location" {
  value = "${azurerm_storage_account.main.secondary_location}"
}

output "storage_primary_blob_endpoint" {
  value = "${azurerm_storage_account.main.primary_blob_endpoint}"
}

output "storage_secondary_blob_endpoint" {
  value = "${azurerm_storage_account.main.secondary_blob_endpoint}"
}

output "storage_primary_queue_endpoint" {
  value = "${azurerm_storage_account.main.primary_queue_endpoint}"
}

output "storage_secondary_queue_endpoint" {
  value = "${azurerm_storage_account.main.secondary_queue_endpoint}"
}

output "storage_primary_table_endpoint" {
  value = "${azurerm_storage_account.main.primary_table_endpoint}"
}

output "storage_secondary_table_endpoint" {
  value = "${azurerm_storage_account.main.secondary_table_endpoint}"
}

output "storage_primary_file_endpoint" {
  value = "${azurerm_storage_account.main.primary_file_endpoint}"
}

output "storage_primary_access_key" {
  value = "${azurerm_storage_account.main.primary_access_key}"
}

output "storage_secondary_access_key" {
  value = "${azurerm_storage_account.main.secondary_access_key}"
}

output "container_names" {
  value = ["${module.storage_container.names}"]
}

output "container_ids" {
  value = ["${module.storage_container.ids}"]
}

output "container_properties" {
  value = ["${module.storage_container.properties}"]
}

