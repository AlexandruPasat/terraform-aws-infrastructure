variable "aws_region" {
  description = "AWS region where infrastructure will be deployed"
  type        = string
  default     = "eu-central-1"
}

variable "project_name" {
  description = "Project name used in tags and resource naming"
  type        = string
  default     = "terraform-aws-infrastructure"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.10.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.10.2.0/24"
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH into bastion, ideally your public IP /32"
  type        = string
}

variable "ec2_public_key_path" {
  description = "Path to the local public SSH key that will be imported to AWS as a key pair"
  type        = string
  default     = "~/.ssh/aws_lab_ed25519.pub"
}

variable "ec2_private_key_path" {
  description = "Path to the local private SSH key used to connect to the bastion"
  type        = string
  default     = "~/.ssh/aws_lab_ed25519"
}

variable "bastion_instance_type" {
  description = "EC2 instance type for the bastion host"
  type        = string
  default     = "t3.micro"
}
