output "minecraft_server_ip" {
  description = "Public IP address of the Minecraft server"
  value       = module.network.public_ip_address
}
