output "instance_ip" {
  value = aws_lightsail_instance.custom.public_ip_address
}
output "instance_private" {
  value = aws_lightsail_instance.custom.private_ip_address
}  