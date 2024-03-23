################ VPC ##################
resource "aws_vpc" "vpc_itm_githubrunners" {
    cidr_block = "${var.vpc_cidr}"
    instance_tenancy = "default"
    enable_dns_hostnames = true
    enable_dns_support = true
    tags = {
      Name =  var.vpc_name
    }
}

################ Subnets 1##################
resource "aws_subnet" "subnet_itm_githubrunners_1" {
    vpc_id = aws_vpc.vpc_itm_githubrunners.id
    cidr_block = var.subnet_1_cidr
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
      Name = var.subnet_1_name
    }
    depends_on = [ 
        aws_vpc.vpc_itm_githubrunners 
    ]
}

################ Subnets 1##################
resource "aws_subnet" "subnet_itm_githubrunners_2" {
    vpc_id = aws_vpc.vpc_itm_githubrunners.id
    cidr_block = var.subnet_2_cidr
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
      Name = var.subnet_2_name
    }
    depends_on = [ 
        aws_vpc.vpc_itm_githubrunners 
    ]
}

################ Internet Gateway##################
resource "aws_internet_gateway" "ig_itm_githubrunners" {
  vpc_id = aws_vpc.vpc_itm_githubrunners.id
  depends_on = [ 
    aws_vpc.vpc_itm_githubrunners 
    ]
}

################ Route Table##################
resource "aws_route_table" "rt_itm_githubrunners" {
    vpc_id = aws_vpc.vpc_itm_githubrunners.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.ig_itm_githubrunners.ig_itm_githubrunners.id
    }
    depends_on = [ 
        aws_internet_gateway.ig_itm_githubrunners 
    ]
}