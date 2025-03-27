terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.24.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source      = "./modules/resource_group"
  name        = var.resource_group_name
  location    = var.location
  environment = var.environment
}

module "network" {
  source              = "./modules/network"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  environment         = var.environment

  vnet_name             = var.vnet_name
  vnet_address_space    = var.vnet_address_space
  subnet_name           = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix

  public_ip_name         = var.public_ip_name
  dns_label              = var.dns_label
  nsg_name               = var.nsg_name
  network_interface_name = var.network_interface_name

  minecraft_port = var.minecraft_port
}

module "vm" {
  source              = "./modules/vm"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  environment         = var.environment

  vm_name          = var.vm_name
  vm_size          = var.vm_size
  admin_username   = var.admin_username
  admin_public_key = var.admin_public_key

  network_interface_id = module.network.network_interface_id

  cloud_init_content = file("${path.root}/cloud-init.yaml")
}
