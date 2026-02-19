provider "aws" {
  region = "us-east-1"
}

module "aws_eks_cluster" {
  source = "./EKS"
  name = var.name
  node_group_name = var.node_group_name
  desired_size = var.desired_size
  max_size = var.max_size
  min_size = var.min_size
}

module "aws_RDS" {
  source = "./RDS"
  name = var.name 
  instance_class = var.instance_class
  db_name = var.db_name
  username = var.username
  password = var.password
}

module "aws_S3" {
  source = "./S3"
  bucket = var.bucket
}