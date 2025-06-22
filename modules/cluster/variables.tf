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