resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc-cidr
  enable_dns_hostnames = true
  tags = {
    Name = "myvpc"
  }
}