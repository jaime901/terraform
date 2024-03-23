#VPC CIDR Block
variable "vpc_cidr" {
    type = string
    description = "VPC CIDR"
}

# VPC Name
variable "vpc_name" {
  type = string
  description = "VPC Name"
}

variable "subnet_1_cidr" {
  type = string
  description = "subnet 1 CIDR"
}

variable "subnet_2_cidr" {
  type = string
  description = "subnet 2 CIDR"
}

variable "subnet_1_name" {
  type = string
  description = "Subnet 1 Name"
}

variable "subnet_2_name" {
  type = string
  description = "Subenet 2 Name"
}