variable "a"
{
}
variable "b"
{
default="1000"
}
output "avalue"
{
value="${var.a}"
}
output "bvalue"
{
value="${var.b}"
}