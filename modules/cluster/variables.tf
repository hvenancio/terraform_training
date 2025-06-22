variable "env_name" {
  type = string
}

variable "project_name" {
  description = "Project name to be used to name the resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}

variable "public_subnet_1a" {
  type        = string
  description = "Subnet to create the EKS cluster AZ 1a"
}

variable "public_subnet_1b" {
  type        = string
  description = "Subnet to create the EKS cluster AZ 1b"
}