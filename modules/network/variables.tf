variable "resource_group_name" {
  description = "Name of the resource group to deploy network resources in"
  type        = string
}
variable "location" {
  description = "Azure region for network resources"
  type        = string
}
variable "environment" {
  description = "Deployment environment (for tagging)"
  type        = string
}
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}
variable "vnet_address_space" {
  description = "CIDR for the virtual network address space"
  type        = string
}
variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}
variable "subnet_address_prefix" {
  description = "CIDR for the subnet"
  type        = string
}
variable "public_ip_name" {
  description = "Name of the public IP resource"
  type        = string
}
variable "nsg_name" {
  description = "Name of the network security group"
  type        = string
}
variable "network_interface_name" {
  description = "Name of the network interface"
  type        = string
}
variable "minecraft_port" {
  description = "Minecraft server port to allow in NSG"
  type        = number
}
variable "dns_label" {
  description = "Subdomain to Azure public IP label"
  type        = string
}
