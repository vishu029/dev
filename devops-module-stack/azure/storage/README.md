# Description
Creates storage accounts and containers

## Configuration
Consult variables file for descriptions

# How to use
## Inputs
* location
* resource_group_name
* name
* account_kind
* account_type
* access_tier
* enable_blob_encryption
* [container_names]

## Outputs
* storage_id
* storage_primary_location
* storage_secondary_location
* storage_primary_blob_endpoint
* storage_secondary_blob_endpoint
* storage_primary_queue_endpoint
* storage_secondary_queue_endpoint
* storage_primary_table_endpoint
* storage_secondary_table_endpoint
* storage_primary_file_endpoint
* storage_primary_access_key
* storage_secondary_access_key
* [container_ids]
* [container_properties]

## Terraform Docs
https://www.terraform.io/docs/providers/azurerm/r/storage_account.html

