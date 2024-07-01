terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "merav-rg" {
  name     = "merav-resources"
  location = "East Us"
  tags = {
    environment = "dev"
  }
}