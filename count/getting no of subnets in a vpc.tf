variable "vpcids"
{
type="string"
}
data aws_subnet_ids "subnet1"
 {
  vpc_id ="${var.vpcids}"
}
output "subnetids"
{
value="${data.aws_subnet_ids.subnet1.id}"
}
output "subnetidcount"
{
value="${length(data.aws_subnet_ids.subnet1.id)}"
}
