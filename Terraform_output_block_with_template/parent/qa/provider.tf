terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.46.0"
        }
    }
     backend "azurerm" {}
      
    }



provider "azurerm" {
    features {}
    subscription_id = "787c86fa-2cad-40aa-8646-4356806d5a43"
}

