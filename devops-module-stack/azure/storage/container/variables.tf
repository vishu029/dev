variable "resource_group_name" {
  description = "Resource group name"
}

variable "storage_name" {
  description = "Name of the storage account"
}

variable "container_names" {
  type        = "list"
  description = "Names of storage container accounts"
}

variable "container_access_type" {
  default     = "private"
  description = "See https://azure.github.io/azure-storage-java/com/microsoft/azure/storage/blob/BlobContainerPermissions.html"
}
