variable "env_name" {
  type        = string
  description = "Current environment being deployed to"
}

variable "cidr_block_vpc" {
  type        = string
  description = "Networking CIDR block to be used for VPC"
}

variable "project_name" {
  description = "Project name to be used to name the resources"
}