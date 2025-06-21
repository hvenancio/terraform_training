variable "env_name" {
  type = string
}

variable "cidr_block_vpc" {
  type        = string
  description = "Networking CIDR block to be used for VPC"
}