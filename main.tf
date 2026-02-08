provider "aws" {
  region = var.region
  # access_key = var.access_key
  # secret_key = var.secret_key
}



module "EKS" {
#   Path to the EKS module
  source = "/EKS"

#   availability zones
  availability_zone_1 = var.availability_zone_1
  availability_zone_2 = var.availability_zone_2

#   EKS Node Group scaling 
  desired_size = var.desired_size
  max_size = var.max_size
  min_size = var.min_size

#   EKS Node Group instance types
  instance_types = var.instance_types
 
}


module "RDS" {
  source = "/RDS"

  allocated_storage = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage
  instance_class = var.instance_class
  username = var.username
  password = var.password
}


module "s3" {
  source = "/S3"

  bucket = var.bucket
}