terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.51.0"
    }
  }
}


provider "azurerm" {
  features {}
  subscription_id = "9d96148d-a3b7-4254-8194-71f35003800c"
}