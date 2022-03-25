resource "aws_vpc" "vpc1" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpcname
  }
}


resource "aws_subnet" "subnet1a" {
  vpc_id            = aws_vpc.vpc1.id
  availability_zone = var.az
  cidr_block        = var.subnet_cidr
  tags = {
    Name = var.subnet_names
  }
}
# este recurso sirve para crear la tarjeta de red, es cuando
# queremos dejar una IP  fija  y que  AWS no la  cambie
resource "aws_network_interface" "iface1" {
  subnet_id   = aws_subnet.subnet1a.id
  private_ips = var.ec2_private_ip
  tags = {
    Name = "primary network interface"
  }
}
