variable "resource_group_name" {
  description = "Name of the resource group to deploy the VM in"
  type        = string
}
variable "location" {
  description = "Azure region for the VM"
  type        = string
}
variable "environment" {
  description = "Deployment environment (for tagging)"
  type        = string
}
variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}
variable "vm_size" {
  description = "Azure VM size (SKU) for the virtual machine"
  type        = string
}
variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}
variable "admin_public_key" {
  description = "SSH public key for the admin user"
  type        = string
}
variable "network_interface_id" {
  description = "ID of the network interface to attach to the VM"
  type        = string
}
variable "cloud_init_content" {
  description = "Cloud-init script content to provision the VM"
  type        = string
}
