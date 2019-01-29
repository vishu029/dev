Module for Azure `subnet`
=========================

A terraform module to provide a `subnet` in Azure. Providing NSG is this module is optional.

Module Input Variables
----------------------

- `resource_group_name`
- `virtual_network_name`
- `name`
- `count_format`
- `address_spaces`

Usage
-----

```hcl
module "subnet" {
  source = ...
  resource_group_name  = "rg1"
  virtual_network_name = "vnet1"
  name                 = "vnet1-subnets"
  address_spaces       = "10.0.0.0/16"
}
```

Configuration
=============
Consult variables file for descriptions

Outputs
=======

- `[ids]`
- `[names]`
- `[ip_configurations]`
- `[virtual_network_name]`
- `[address_prefix]`

