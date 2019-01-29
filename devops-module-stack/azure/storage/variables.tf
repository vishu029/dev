variable "location" {
  default     = "uksouth"
  description = "Geographic location for the virtual machine"
}

variable "resource_group_name" {
  description = "Resource group name"
}

variable "storage_name" {
  description = "Name of the storage account"
}

variable "storage_account_kind" {
  default     = "Storage"
  description = "Account kind. Valid options are Storage and BlobStorage. Blob storage accounts support only block and append blobs, and not page blobs. See https://docs.microsoft.com/en-us/azure/storage/storage-create-storage-account"
}

variable "storage_account_tier" {
  default     = "Standard"
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. "
}

variable "account_replication_type" {
  default     = "LRS"
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS and ZRS."
}

variable "storage_access_tier" {
  default     = "Hot"
  description = "Access tier. Required for StandardBlob accounts. See https://docs.microsoft.com/en-us/azure/storage/storage-blob-storage-tiers"
}

variable "storage_enable_blob_encryption" {
  default     = false
  description = "Supports both general purpose and blob storage. See https://docs.microsoft.com/en-us/azure/storage/storage-service-encryption"
}

variable "container_names" {
  default     = []
  description = "Container names to create on the storage account"
}

