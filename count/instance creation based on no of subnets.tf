variable "v1"
{
type="string" 
}
data aws_subnet_ids "subnet1"
{
vpc_id="${var.v1}"
}
resource aws_instance "instance1"
{
count="${length(data.aws_subnet_ids.subnet1.ids)}"
ami="ami-0d6c336fc1df6d884"
instance_type="t2.micro"
subnet_id="${data.aws_subnet_ids.subnet1.ids[count.index]}"
}
output "valv1"
{
value="${var.v1}"
}