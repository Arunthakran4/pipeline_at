# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "4.75.0"
#     }
#   }
#   backend "azurerm" {
#     resource_group_name  = "rg_arun"         # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
#     storage_account_name = "storagearun"     # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
#     container_name       = "tfstate"         # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
#     key                  = "subnet2.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
#   }
# }

# # Configure the Microsoft Azure Provider
# provider "azurerm" {
#   features {}
#   #   subscription_id = ""
# }
