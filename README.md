<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 6.0.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.37.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks_cluster"></a> [eks\_cluster](#module\_eks\_cluster) | ./modules/cluster | v1.0.0 |
| <a name="module_eks_load_balancer_controller"></a> [eks\_load\_balancer\_controller](#module\_eks\_load\_balancer\_controller) | ./modules/aws-load-balancer-controller | v1.0.0 |
| <a name="module_eks_managed_node_group"></a> [eks\_managed\_node\_group](#module\_eks\_managed\_node\_group) | ./modules/managed-node-group | v1.0.0 |
| <a name="module_eks_network"></a> [eks\_network](#module\_eks\_network) | ./modules/network | v1.0.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block_vpc"></a> [cidr\_block\_vpc](#input\_cidr\_block\_vpc) | Networking CIDR block to be used for VPC | `string` | n/a | yes |
| <a name="input_env_name"></a> [env\_name](#input\_env\_name) | Current environment being deployed to | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Project name to be used to name the resources | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->