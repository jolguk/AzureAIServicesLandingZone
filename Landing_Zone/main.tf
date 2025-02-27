terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.54.0"
    }
  }
}

provider "azurerm" {

  features {}
}


provider "azurerm" {
 alias           = "connectivity"
 subscription_id = var.connectivity_subscription
 skip_provider_registration = true
 features {}
}

provider "azurerm" {
  alias           = "management"
  subscription_id = var .management_subscription
  skip_provider_registration = true
  features {}
} 

provider "azurerm" {
  alias           = "identity"
  subscription_id = var.identity_subscription
  skip_provider_registration = true
  features {}
} 


