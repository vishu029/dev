output "names" {
  value = ["${azurerm_storage_container.main.*.name}"]
}

output "ids" {
  value = ["${azurerm_storage_container.main.*.id}"]
}

output "properties" {
  value = ["${azurerm_storage_container.main.*.properties}"]
}

