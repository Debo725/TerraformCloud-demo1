
##Backend Configuration
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}

provider "azurerm" {

subscription_id = var.subscriptionID
client_id       = var.clientID
client_secret   = var.clientsecret
tenant_id       = var.tenantID
  features {}
}


##Create a Resource Group
resource "azurerm_resource_group" "app_rg1" {
  name     = "TF-Cloud-Demo1-RG"
  location = "East US"
}

##Create A VNet
resource "azurerm_virtual_network" "app_vnet" {
  name                = "app-vnet"
  location            = azurerm_resource_group.app_rg1.location
  resource_group_name = azurerm_resource_group.app_rg1.name
  address_space       = ["10.0.0.0/16"]

  depends_on = [
    azurerm_resource_group.app_rg1
  ]
}

##Create a Subnet
  resource "azurerm_subnet" "app_subnet" {
  name                 = "app-subnet1"
  resource_group_name  = azurerm_resource_group.app_rg1.name
  virtual_network_name = azurerm_virtual_network.app_vnet.name
  address_prefixes     = ["10.0.1.0/24"]

  depends_on = [
    azurerm_virtual_network.app_vnet
  ]
  }

