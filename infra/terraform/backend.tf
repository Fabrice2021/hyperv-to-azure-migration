terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tf-backend"
    storage_account_name = "sttfterraformprod"
    container_name       = "tfstate"
    key                  = "hyperv-migration.tfstate"
  }
}