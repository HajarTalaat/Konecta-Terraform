output "arch2_instance_public_ip" {
  description = "Public IP of the Arch2 EC2 instance"
  value       = module.arch2.public_ip
}
