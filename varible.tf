# provider
variable "region" {
  default = "ap-south-1"
}

## for EKS

# EKS Cluster name
variable "aws_eks_cluster_name" {
  description = "EKS cluster name"
  default = "my-eks-cluster"
}


# EKS Node Group desired, max, and min size
variable "desired_size" {
  description = "Desire size"
  type = number
  default = 2
}

variable "max_size" {
  description = "Max size"
  type = number
  default = 3
}

variable "min_size" {
  description = "min size"
  type = number
  default = 1
}

variable "instance_types" {
  description = "instance type"
  default = ["t3.medium"]
}

## for RDS

variable "allocated_storage" {
  description = "Minimum allocation storage"
  default = 10
  type = number
}

variable "max_allocated_storage" {
  description = "maximum allocation storage"
  default = 20
  type = number
}

variable "instance_class" {
  description = "instance type"
  default = "db.t3.micro"
  type = string
}

variable "username" {
  description = "username for database"
  default = "admin"
}

variable "password" {
  description = "password for database"
  default = "admin"
}

## For S3

variable "bucket" {
  description = "Write bucket name which is not use globaly"
  default = "pranav-kotawa-123"
}