Module for Azure `virtual network`
===========

A terraform module to provide a `virtual network` in Azure

Module Input Variables
----------------------

- `resource_group_name`
- `location`
- `vnet_name`
- `vnet_address_space`
- `vnet_dns_servers`
- `subnet_name`
- `subnet_count_format`
- `subnet_address_spaces`

Usage
-----

```hcl
module "virtual-network" {
  source = ...
  resource_group_name = "rg1"
  location            = "uksouth"
  vnet_name           = "vnetdemo1"
  vnet_address_space  = "10.0.0.0/16"
  vnet_dns_servers    = ["8.8.8.8"]

  # Following is optional
  subnet_name           = "vnetdemo1-subnet"
  subnet_address_spaces = ["10.0.0.0/24", "10.0.1.0/24"]
}
```

Configuration
=============
Consult variables file for descriptions

Outputs
=======

- `vnet_id`
- `vnet_name`
- `[subnet_ids]`
- `[subnet_names]`
- `[subnet_ip_configurations]`
- `[subnet_virtual_network_name]`
- `[subnet_address_prefix]`

