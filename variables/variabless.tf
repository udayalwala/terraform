variable "v1"
{
type="string"
default="uday"
}
output "v1value"
{
value="${var.v1}"
}
variable "list1"
{
type="list"
default=[10,20,30,"udayalwala"]
}
output "l1value"
{
value="${var.list1}"
}
output "l1indexalue"
{
value="${var.list1[0]}"
}
output "noofeleinlist"
{
value="${length(var.list1)}"
}
