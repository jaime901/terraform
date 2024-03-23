
variable "aws_region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "default"
}
variable "shared_credentials_file" {
  default = "C:/ITM_AWS/aws/credentials"
}

/*
variable "vpc_cidr" {
  default = "172.30.0.0/16"
}

variable "subnet_1_cidr" {
  default = "172.30.0.0/24"
}

variable "subnet_2_cidr" {
  default = "172.30.1.0/24"
}
*/

variable "vpc_cidr" {
  type = map(string)
  default = {
    "default" = "192.168.0.0/24"
    "dev" = "192.168.1.0/24"
  }
}

variable "vpc_name" {
  type = map(string)
  default = {
    "default" = "cpv_itm_githubrunner_defatult"
    "dev" = "vpn_itm_githubrunners_dev"
  }
}

variable "subnet_1_cidr" {
  type = map(string)
  default = {
    "default" = "192.168.0.0/27"
    "dev" = "192.168.1.0/27"
  }
}

variable "subnet_1_name" {
  type = map(string)
  default = {
    "default" = "subnet_githubrunners_default_1"
    "dev" = "subnet_githubrunners_dev_1"
  }
}

variable "subnet_2_cidr" {
  type = map(string)
  default = {
    "default" = "192.168.0.32/27"
    "dev" = "192.168.1.32/27"
  }
}

variable "subnet_2_name" {
  type = map(string)
  default = {
    "default" = "subnet_githubrunners_default_2"
    "dev" = "subnet_githubrunners_dev_2"
  }
}