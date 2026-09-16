module "rg" {
  source = "../../child_modules/azurerm_resource_group"
  rgs    = var.resource_groups
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../child_modules/azurerm_vnet"
  vnets      = var.virtual_network
}

module "sub" {
  depends_on = [module.vnet]
  source     = "../../child_modules/azurerm_subnet"
  subs       = var.subnet
}


# resource "azurerm_network_interface" "example" {
#   name                = "example-nic"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   ip_configuration {
#     name                          = "internal"
#     subnet_id                     = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }
