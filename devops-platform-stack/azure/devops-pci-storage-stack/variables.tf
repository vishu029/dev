variable "module_base" {
  default = "git@github.com:DigitalInnovation/terraform-platform-modules/"
}

### Input Variables
variable "environment" {}
variable "region" {}
variable "location" {}

### resource-group variables
variable "resource_group_name" {
  default     = "pci-storagerg"
  description = "Dotcom Resource group which will contain the common storage account."
}

### storage variables

variable "storage_account_name" {
  default     = "pcisada000001"
  description = "Dotcom common Storage Account name. It will keep installables, terraform states etc"
}

variable "storage_account_kind" {
  default     = "Storage"
  description = "Account Kind Storage."
}

variable "storage_account_type" {
  default     = "Standard_LRS"
  description = "Storage to be created as Standard Local Redundant Storage."
}

variable "storage_enable_blob_encryption" {
  default     = false
  description = "Flag to enable blob encryption for common Storage account."
}

variable "container_names" {
  default = ["bnry-blob-0001", "tfstat-blob-0001"]
  description = "List of Containers to be created for common storage. one for binaries and other for terraform remote states"
}
