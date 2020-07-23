resource "aws_vpc" "myvpc"
{
cidr_block="10.0.0.0/24"
}
resource "aws_subnet" "publicsubnet"
{
vpc_id="${aws_vpc.myvpc.id}"
cidr_block="10.0.0.0/25"
}
resource "aws_subnet" "privatesubnet"
{
vpc_id="${aws_vpc.myvpc.id}"
cidr_block="10.0.0.128/25"
}
resource "aws_internet_gateway" "igw"
{
 vpc_id="${aws_vpc.myvpc.id}"
}
resource "aws_route_table" "myrt"
{
vpc_id="${aws_vpc.myvpc.id}"
}
resource "aws_route" "myroutes"
{
route_table_id="${aws_route_table.myrt.id}"
destination_cidr_block="0.0.0.0/0"
gateway_id="${aws_internet_gateway.igw.id}"
}
resource "aws_route_table_association" "rtpubsubassc"
{
 subnet_id="${aws_subnet.publicsubnet.id}"
 route_table_id="${aws_route_table.myrt.id}"
}
