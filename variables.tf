# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."    
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."    
}

variable "namespace" {
  type        = string
  description = ""    
}

# Network
variable "vpc_id" {
  type        = string
  description = ""    
}

variable "vpc_cidr" {
  type        = string
  description = ""    
}

variable "subnet_id_1" {
  type        = string
  description = ""    
}

variable "subnet_id_2" {
  type        = string
  description = ""    
}

# Security Group
variable "aws_security_group_name" {
  type        = string
  description = ""    
}

# ALB
variable "aws_lb_name" {
  type        = string
  description = "(Optional) The name of the LB. This name must be unique within your AWS account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and must not begin or end with a hyphen. If not specified, Terraform will autogenerate a name beginning with tf-lb."    
}
