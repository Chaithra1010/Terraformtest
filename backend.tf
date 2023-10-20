terraform {
  backend "azurerm" {
    resource_group_name = "chaithratestrg"
    storage_account_name = "chaithratestrg"
    container_name = "tfstate"
    key = "terraform.tfstate"
    
  }
}
