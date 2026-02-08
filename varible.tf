# provider
variable "region" {
  default = "ap-south-1"
}

# # access key
# variable "access_key" {
#   default = ""
# }

# # secret key
# variable "secret_key" {
#   default = ""
# }

## for EKS

# Availability Zones subnet 1
variable "availability_zone_1" {
    default = "ap-south-1a"
}

# Availability Zones subnet 2
variable "availability_zone_2" {
    default = "ap-south-1b"
}


# EKS Cluster name
variable "aws_eks_cluster_name" {
    default = "my-eks-cluster"
}


# EKS Node Group desired, max, and min size
variable "desired_size" {
    default = 2
}

variable "max_size" {
    default = 3
}

variable "min_size" {
    default = 1
}

variable "instance_types" {
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