resource_groups = {
  "rg1" = {
    name     = "Arun1"
    location = "West us"
  }
  "rg2" = {
    name     = "Arun2"
    location = "east us"
  }
}

virtual_network = {
  "vnet1" = {
    name                = "Arun-vnet1"
    location            = "West us"
    resource_group_name = "Arun1"
    address_space       = ["10.0.0.0/20"]
  }
  "vnet2" = {
    name                = "Arun-vnet2"
    location            = "west us"
    resource_group_name = "Arun1"
    address_space       = ["10.0.0.0/16"]
  }
}


subnet = {
  "sub1" = {
    name                 = "sub_Arun"
    resource_group_name  = "Arun1"
    virtual_network_name = "Arun-vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  "sub2" = {
    name                 = "sub_Arun12"
    resource_group_name  = "Arun1"
    virtual_network_name = "Arun-vnet1"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
