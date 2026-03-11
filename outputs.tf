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
