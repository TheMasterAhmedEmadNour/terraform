resource "aws_instance" "puplic1" {
#   count = length(var.ec2-name)
  ami                         = var.ami-id
  instance_type               = var.instance_type
  tags = {
    "Name" = "ec2-puplic"
  }
}  
resource "aws_instance" "puplic2" {
#   count = length(var.ec2-name)
  ami                         = var.ami-id
  instance_type               = var.instance_type
  tags = {
    "Name" = "ec2-puplic2"
  }
}
resource "aws_instance" "private1" {
#   count = length(var.ec2-name)
  ami                         = var.ami-id
  instance_type               = var.instance_type
  tags = {
    "Name" = "ec2-private"
  }
} 
resource "aws_instance" "private2" {
#   count = length(var.ec2-name)
  ami                         = var.ami-id
  instance_type               = var.instance_type
  tags = {
    "Name" = "ec2-private2"
  }
}  