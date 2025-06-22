module "eks_network" {
  source         = "./modules/network"
  cidr_block_vpc = var.cidr_block_vpc
  project_name   = var.project_name
  env_name       = var.env_name
  tags           = local.tags
}

module "eks_cluster" {
  source       = "./modules/cluster"
  project_name = var.project_name
  env_name     = var.env_name
  tags         = local.tags
}