variable "env_name" {
  type        = string
  description = "Current environment being deployed to"
}

variable "cidr_block_vpc" {
  type        = string
  description = "Networking CIDR block to be used for VPC"
}

variable "region" {
  type        = string
  description = "AWS Region to create the resources"
}

variable "project_name" {
  type        = string
  description = "Project name to be used to name the resources"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to be used as standard tags for all AWS resources"
}