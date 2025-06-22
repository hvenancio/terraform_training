variable "env_name" {
  type = string
}

variable "project_name" {
  description = "Project name to be used to name the resources"
}

variable "cluster_name" {
  type        = string
  description = "EKS Cluster name"
}

variable "subnet_private_1a" {
  type        = string
  description = "Subnet ID from AZ 1a"
}

variable "subnet_private_1b" {
  type        = string
  description = "Subnet ID from AZ 1b"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}