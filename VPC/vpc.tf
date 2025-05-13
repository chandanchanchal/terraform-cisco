resource "aws_vpc" "main" {
  cidr_block             = var.vpc_cidr
  enable_dns_support     = var.enable_dns_support

    tags = {
      Name = "myvpc"
  }
}

resource "aws_subnet" "public"{
  vpc_id                     = aws_vpc.main.id
  cidr_block                 =  var.public_subnet_cidr
  map_public_ip_on_launch    = true
  availability_zone          = "us-east-2a"
  tags = {
    Name = "Public-subnet"
}

}



resource "aws_subnet" "private"{
  vpc_id                     = aws_vpc.main.id
  cidr_block                 =  var.private_subnet_cidr
  availability_zone          = "us-east-2b"
  tags = {
    Name = "private-subnet"
}
}

resource "aws_internet_gateway" "myigw" {
  vpc_id     = aws_vpc.main.id

}

resource "aws_route_table" "public" {
  vpc_id       = aws_vpc.main.id
  route {
   cidr_block = "0.0.0.0/0"
   gateway_id = aws_internet_gateway.myigw.id
 }
 tags = {
   Name = "public-RT"
}

}

resource "aws_route_table_association" "public-association" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
