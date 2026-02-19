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

