##Variables
variable "subscriptionID" {
type = string
}

variable "clientID" {
type = string
}

variable "clientsecret" {
type = string
}

variable "tenantID" {
type = string
}

variable "azurerm_resource_group_name" {
  type        = string
  description = "Enter the resource group name"
  default     = "KiawiTech-PROD-RG"
}
variable "azurerm_network_security_group_name" {
  type        = string
  description = "Enter the security group name"
  default     = "mi-NSG"
}
variable "azurerm_virtual_network_name" {
  type        = string
  description = "Enter the virtual network name"
  default     = "mi-VNET"
}
variable "azurerm_subnet_name" {
  type        = string
  description = "Enter subnet name"
  default     = "mi-SUBNET"
}
variable "location" {
  type        = string
  description = "Enter the location where you want to deploy the resources"
  default     = "eastus"
}

variable "administrator_login" {
  type        = string
  description = "Enter Administrator name for the database"
  default     = "ServerAdmin"
}

variable "administrator_login_password" {
  type        = string
  description = "Enter administrator password for the database"
  default     = "KiawiTech.com2023"
  sensitive   = true
}

variable "database_name" {
  type        = string
  description = "Enter database name"
  default     = "deboprod-mi-server"
}

variable "sku_name" {
  type        = string
  description = "Enter SKU"
  default     = "GP_Gen5"
}
variable "license_type" {
  type        = string
  description = "Enter license type"
  default     = "BasePrice"
}
variable "vcores" {
  type        = number
  description = "Enter number of vCores you want to deploy"
  default     = 4
}
variable "storage_size_in_gb" {
  type        = number
  description = "Enter storage size in GB"
  default     = 32
}

variable "storage_account_type" {
  type        = string
  description = "Enter storage account type"
  default     = "LRS"
}
