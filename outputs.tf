output "instance_id" {
  description = "ID de la instancia EC2"
  value       = aws_instance.web.id
}
output "public_ip" {
  description = "IP pública de la instancia EC2"
  value       = aws_instance.web.public_ip
}
output "security_group_id" {
  description = "ID del Security Group"
  value       = aws_security_group.web.id
}
