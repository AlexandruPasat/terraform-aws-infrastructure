output "selected_region" {
  description = "AWS region selected for this Terraform project"
  value       = var.aws_region
}

output "availability_zone_used" {
  description = "Availability Zone used for the subnets"
  value       = data.aws_availability_zones.available.names[0]
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = aws_subnet.private.id
}

output "internet_gateway_id" {
  description = "ID of the internet gateway"
  value       = aws_internet_gateway.igw.id
}

output "bastion_instance_id" {
  description = "ID of the bastion EC2 instance"
  value       = aws_instance.bastion.id
}

output "bastion_public_ip" {
  description = "Public IPv4 address of the bastion host"
  value       = aws_instance.bastion.public_ip
}

output "bastion_public_dns" {
  description = "Public DNS name of the bastion host"
  value       = aws_instance.bastion.public_dns
}

output "bastion_ssh_command" {
  description = "SSH command to connect to the bastion host"
  value       = "ssh -i ${pathexpand(var.ec2_private_key_path)} ec2-user@${aws_instance.bastion.public_ip}"
}
output "app_instance_id" {
  description = "ID of the private app EC2 instance"
  value       = aws_instance.app.id
}

output "app_private_ip" {
  description = "Private IPv4 address of the app server"
  value       = aws_instance.app.private_ip
}

output "ssh_app_via_bastion" {
  description = "SSH command to reach the app server through the bastion host"
  value       = "ssh -i ${pathexpand(var.ec2_private_key_path)} -J ec2-user@${aws_instance.bastion.public_ip} ec2-user@${aws_instance.app.private_ip}"
}
