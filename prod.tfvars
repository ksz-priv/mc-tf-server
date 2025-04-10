#PROD
environment         = "prod"
location            = "Poland Central"
resource_group_name = "mc-prod-rg"

#Networking
vnet_name              = "mc-prod-vnet"
vnet_address_space     = "10.0.0.0/16"
subnet_name            = "mc-prod-subnet"
subnet_address_prefix  = "10.0.0.0/24"
public_ip_name         = "mc-prod-pip"
nsg_name               = "mc-prod-nsg"
network_interface_name = "mc-prod-nic"
dns_label              = "ksz-mc-prod" #for azure domain - prefix

#Virtual Machine
vm_name          = "mc-prod-vm"
vm_size          = "Standard_B2s"
admin_username   = "mcadmin"
admin_public_key = "ssh-rsa key"
minecraft_port   = 25565

