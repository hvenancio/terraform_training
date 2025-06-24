resource "aws_iam_role" "eks_controller_role" {
  name = "${var.project_name}-alb-controller-role"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Federated": "arn:aws:iam:${data.aws_caller_identity.current.account_id}:oidc-provider/oidc.eks.${data.aws_region.current.name}.amazonws.com/id/${local.oidc}"
                },
                "Action": "sts:AssumeRolesWithWebIdentity",
                "Condition": {
                    "StringEquals": {
                        "oidc.eks.${data.aws_region.current.name}.amazonaws.com/id/${local.oidc}:aud": "sts.amazonaws.com",
                        "oidc.eks.${data.aws_region.current.name}.amazonaws.com/id/${local.oidc}:sub": "system:serviceaccounte:kubesystem:aws-load-balancer-controller"
                    }
                }
        }
    ]
}
EOF
  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-lb-controller-role"
    }
  )
}

resource "aws_iam_role_policy_attachment" "eks_controller_role_attachement" {
  role       = aws_iam_role.eks_controller_role.name
  policy_arn = aws_iam_policy.eks_controller_policy.arn
}