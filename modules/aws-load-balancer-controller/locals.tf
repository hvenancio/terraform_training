locals {
  oidc = split("/", var.oidc)[-1]
}