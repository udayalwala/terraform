variable "m1"
{
type="map"
default=
{
"mumbai"="ap-south-1"
"singapore"="ap-southeast-1"
}
}
variable "v_ami"
{
type="map"
default=
{
"ap-south-1"="ami-1234"
"ap-southeast-1"="ami-abc"
}
}
output "m1val"
{
value="${var.m1}"
}
output "m1specval"
{
value="${lookup(var.m1,"mumbai")}"
}
output "m1specval2"
{
value="${lookup(var.v_ami,"ap-southeast-1")}"
}