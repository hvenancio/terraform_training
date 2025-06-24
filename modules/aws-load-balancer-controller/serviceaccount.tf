resource "kubernetes_service_account" "eks_controller" {
  metadata {
    name      = "aws-load-balancer-controller"
    namespace = "kube-system"
    annotations = {
      "aks.amazonaws.com/role-arn" = aws_iam_role.eks_controller_role.arn
    }
  }
}