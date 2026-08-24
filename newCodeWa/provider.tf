terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=5.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "d0200003-d736-4f7e-aeba-1c554da49b47"
}