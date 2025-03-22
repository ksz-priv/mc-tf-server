variable "environment" {
  description = "Deployment environment name (e.g., dev or prod)"
  type        = string
}
variable "location" {
  description = "Azure region for resource deployment"
  type        = string
}
variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
}
variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}
variable "vnet_address_space" {
  description = "CIDR block for the virtual network address space"
  type        = string
}
variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}
variable "subnet_address_prefix" {
  description = "CIDR block for the subnet"
  type        = string
}
variable "public_ip_name" {
  description = "Name of the public IP address resource"
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
variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}
variable "vm_size" {
  description = "Azure VM SKU size for the virtual machine"
  type        = string
}
variable "admin_username" {
  description = "Administrator username for the VM"
  type        = string
}
variable "admin_public_key" {
  description = "SSH public key for the admin user"
  type        = string
}
variable "minecraft_port" {
  description = "Port number for the Minecraft server"
  type        = number
}
