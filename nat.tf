resource "aws_eip" "natip" {
  
}
resource "aws_nat_gateway" "NAT" {
  allocation_id = aws_eip.natip.id
  subnet_id     = aws_subnet.publicsub1.id

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}