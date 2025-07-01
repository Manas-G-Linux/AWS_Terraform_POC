variable "aws_region" {
  description = "AWS region to deploy into"
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS profile to use"
  default     = "default"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_a" {
  default = "10.0.1.0/24"
}
variable "public_subnet_cidr_b" {
  default = "10.0.2.0/24"
}

variable "az_a" {
  default = "us-east-1a"
}

variable "az_b" {
  default = "us-east-1b"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for Amazon Linux"
  default     = "ami-0c94855ba95c71c99"
}

variable "key_name" {
  description = "Name of the EC2 Key Pair"
  default     = "eks-terraform-key" #using a key from my account
}
