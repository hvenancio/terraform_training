output "subnet_pub_1a" {
  value = module.eks_network.subnet_pub_1a.id
}

output "subnet_pub_1b" {
  value = module.eks_network.subnet_pub_1b.id
}

output "subnet_private_1a" {
  value = module.eks_network.subnet_private_1a.id
}

output "subnet_private_1b" {
  value = module.eks_network.subnet_private_1b.id
}