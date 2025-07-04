module "eks_network" {
  source         = "./modules/network"
  cidr_block_vpc = var.cidr_block_vpc
  project_name   = var.project_name
  env_name       = var.env_name
  tags           = var.tags
}

module "eks_cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  env_name         = var.env_name
  tags             = var.tags
  public_subnet_1a = module.eks_network.subnet_pub_1a
  public_subnet_1b = module.eks_network.subnet_pub_1b
}

module "eks_managed_node_group" {
  source            = "./modules/managed-node-group"
  project_name      = var.project_name
  env_name          = var.env_name
  subnet_private_1a = module.eks_network.subnet_private_1a
  subnet_private_1b = module.eks_network.subnet_private_1b
  cluster_name      = module.eks_cluster.cluster_name
  tags              = var.tags
}

module "eks_load_balancer_controller" {
  source       = "./modules/aws-load-balancer-controller"
  project_name = var.project_name
  env_name     = var.env_name
  oidc         = module.eks_cluster.oidc
  cluster_name = module.eks_cluster.cluster_name
  tags         = var.tags
}