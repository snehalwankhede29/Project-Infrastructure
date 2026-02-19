#S3

variable "bucket" {
  default = "my-first-bucket-for-frontend"
}

#EKS

variable "name" {
  default = "eks-cluster-role"
}

variable "node_group_name" {
  default = "eks-node-group"
}

variable "desired_size" {
  default = 1
}

variable "max_size" {
  default = 2
}

variable "min_size" {
  default = 1
}


# RDS

variable "rds-name" {
  default = "default-db-subnet-group-1"
}

variable "db_name" {
  default = "mydb"
}

variable "username" {
  default = "admin"
}

variable "password" {
  default = "Redhat123"
}

variable "instance_class" {
  default = "db.t3.micro"
}
