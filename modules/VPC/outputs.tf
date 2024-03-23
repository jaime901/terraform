output "vpc_id" {
  description = "Instance ID"
  value = aws_vpc.vpc_itm_githubrunners.id
}
output "subnet_id" {
  description = "Subnet ID"
  value= aws_subnet.subnet_itm_githubrunners_1.id
}
