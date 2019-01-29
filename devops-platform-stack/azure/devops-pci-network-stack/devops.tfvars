environment = "devops"
location = "North Europe"
region = "eun"

#vnet address spaces
vnet_address_space = "10.105.32.0/20"

#subnet address spaces
subnet_address_spaces_pci = ["10.105.33.0/24"]

#pcigate subnet security group and rules
nsg_name_pci_appgat = "pci-appgw-nsg-0001"
security_rule_name_pci_appgat = ["SS-1_Inbound_AppGW_80","SS-2_Inbound_AppGW_80","SS-3_Inbound_AppGW_80","SS-4_Inbound_AppGW_80","SS-5_Inbound_AppGW_80","SS-6_Inbound_AppGW_80","SS-7_Inbound_AppGW_80","SS-8_Inbound_AppGW_80","SS-9_Inbound_AppGW_80","SS-10_Inbound_AppGW_80","SS-11_Inbound_AppGW_80","SS-12_Inbound_AppGW_80","SS-13_Inbound_AppGW_80","SS-14_Inbound_AppGW_80","SS-15_Inbound_AppGW_80","SS-16_Inbound_AppGW_80","SS-17_Inbound_AppGW_80","SS-18_Inbound_AppGW_80","SS-19_Inbound_AppGW_80","SS-20_Inbound_AppGW_80","SS-21_Inbound_AppGW_80","SS-22_Inbound_AppGW_80","SS-23_Inbound_AppGW_80","SS-24_Inbound_AppGW_80","SS-25_Inbound_AppGW_80","SS-26_Inbound_AppGW_80","SS-27_Inbound_AppGW_80","SS-28_Inbound_AppGW_80","SS-29_Inbound_AppGW_80","SS-30_Inbound_AppGW_80","SS-31_Inbound_AppGW_80","SS-32_Inbound_AppGW_80","SS-33_Inbound_AppGW_80","SS-34_Inbound_AppGW_80","SS-35_Inbound_AppGW_80","SS-36_Inbound_AppGW_80","SS-37_Inbound_AppGW_80","SS-1_Inbound_AppGW_443","SS-2_Inbound_AppGW_443","SS-3_Inbound_AppGW_443","SS-4_Inbound_AppGW_443","SS-5_Inbound_AppGW_443","SS-6_Inbound_AppGW_443","SS-7_Inbound_AppGW_443","SS-8_Inbound_AppGW_443","SS-9_Inbound_AppGW_443","SS-10_Inbound_AppGW_443","SS-11_Inbound_AppGW_443","SS-12_Inbound_AppGW_443","SS-13_Inbound_AppGW_443","SS-14_Inbound_AppGW_443","SS-15_Inbound_AppGW_443","SS-16_Inbound_AppGW_443","SS-17_Inbound_AppGW_443","SS-18_Inbound_AppGW_443","SS-19_Inbound_AppGW_443","SS-20_Inbound_AppGW_443","SS-21_Inbound_AppGW_443","SS-22_Inbound_AppGW_443","SS-23_Inbound_AppGW_443","SS-24_Inbound_AppGW_443","SS-25_Inbound_AppGW_443","SS-26_Inbound_AppGW_443","SS-27_Inbound_AppGW_443","SS-28_Inbound_AppGW_443","SS-29_Inbound_AppGW_443","SS-30_Inbound_AppGW_443","SS-31_Inbound_AppGW_443","SS-32_Inbound_AppGW_443","SS-33_Inbound_AppGW_443","SS-34_Inbound_AppGW_443","SS-35_Inbound_AppGW_443","SS-36_Inbound_AppGW_443","SS-37_Inbound_AppGW_443","LondonVPN_Inbound_AppGW_80","GGN1All_Inbound_AppGW_80","GGN2All_Inbound_AppGW_80","Alicudi1_Inbound_AppGW_80","Alicudi2_Inbound_AppGW_80","LondonVPN_Inbound_AppGW_443","GGN1All_Inbound_AppGW_443","GGN2All_Inbound_AppGW_443","Alicudi1_Inbound_AppGW_443","Alicudi2_Inbound_AppGW_443"]
priority_pci_appgat = [101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184]
direction_pci_appgat = ["Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound","Inbound"]
access_pci_appgat = ["Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow","Allow"]
protocol_pci_appgat = ["Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp","Tcp"]
source_port_range_pci_appgat = ["*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*","*"]
destination_port_range_pci_appgat = ["80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","80","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","443","80","80","80","80","80","443","443","443","443","443"]
source_address_prefix_pci_appgat = ["104.103.232.0/24","104.71.131.0/24","104.97.78.0/24","131.103.136.0/24","131.103.137.0/24","165.254.137.64/26","184.51.199.0/24","184.84.239.0/24","195.10.11.0/24","195.59.188.0/24","2.16.106.0/24","2.18.240.0/24","209.170.78.128/25","209.170.97.0/24","209.95.131.128/25","23.14.94.0/24","23.15.33.0/24","23.205.170.0/24","23.57.69.0/24","23.57.74.0/24","23.62.238.0/24","23.67.253.0/24","23.79.240.0/24","61.246.63.64/26","66.171.227.0/24","69.192.3.0/24","69.192.4.0/24","69.31.33.0/24","72.246.150.0/24","72.246.184.0/24","72.247.181.0/24","77.67.85.0/24","80.157.149.0/24","80.239.234.128/25","88.221.87.0/24","92.123.66.0/24","96.7.55.0/24","104.103.232.0/24","104.71.131.0/24","104.97.78.0/24","131.103.136.0/24","131.103.137.0/24","165.254.137.64/26","184.51.199.0/24","184.84.239.0/24","195.10.11.0/24","195.59.188.0/24","2.16.106.0/24","2.18.240.0/24","209.170.78.128/25","209.170.97.0/24","209.95.131.128/25","23.14.94.0/24","23.15.33.0/24","23.205.170.0/24","23.57.69.0/24","23.57.74.0/24","23.62.238.0/24","23.67.253.0/24","23.79.240.0/24","61.246.63.64/26","66.171.227.0/24","69.192.3.0/24","69.192.4.0/24","69.31.33.0/24","72.246.150.0/24","72.246.184.0/24","72.247.181.0/24","77.67.85.0/24","80.157.149.0/24","80.239.234.128/25","88.221.87.0/24","92.123.66.0/24","96.7.55.0/24","213.86.111.10","14.140.116.135","14.140.116.145","194.221.15.33","194.221.15.34","213.86.111.10","14.140.116.135","14.140.116.145","194.221.15.33","194.221.15.34"]
destination_address_prefix_pci_appgat = ["10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24","10.105.39.0/24"]