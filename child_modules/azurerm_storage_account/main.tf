resource "azurerm_storage_account" "example_storage" {
  name                     = "storagearun"
  resource_group_name      = "Arun1"
  location                 = "West us"
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
