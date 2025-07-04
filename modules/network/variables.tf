variable "env_name" {
  type = string
}

variable "cidr_block_vpc" {
  type        = string
  description = "Networking CIDR block to be used for VPC"
}

variable "project_name" {
  description = "Project name to be used to name the resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}