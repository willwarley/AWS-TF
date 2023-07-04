# Create an EKS cluster
resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn
  version  = var.cluster_version

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }

  tags = var.tags
}

# Output the EKS cluster endpoint
output "eks_cluster_endpoint" {
  value       = aws_eks_cluster.eks_cluster.endpoint
  description = "The endpoint URL for the EKS cluster"
}

# main.tf

module "eks_cluster" {
  source = "\variables"

  aws_region         = var.aws_region
  cluster_name       = var.cluster_name
  cluster_role_arn   = var.cluster_role_arn
  cluster_version    = var.cluster_version
  subnet_ids         = var.subnet_ids
  security_group_ids = var.security_group_ids
  tags               = var.tags
}