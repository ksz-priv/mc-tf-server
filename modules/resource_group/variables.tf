variable "name" {
  description = "Name of the resource group"
  type        = string
}
variable "location" {
  description = "Azure region for the resource group"
  type        = string
}
variable "environment" {
  description = "Deployment environment (for tagging)"
  type        = string
}
