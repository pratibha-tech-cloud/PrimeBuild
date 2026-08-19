terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
backend "azurerm" {
  resource_group_name = "Pagla.com"
  storage_account_name = "storageaccount125768344"
  container_name = "paglacontainer"
  key = "prod.terraform.tfstate"
}
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "d0200003-d736-4f7e-aeba-1c554da49b47"
}