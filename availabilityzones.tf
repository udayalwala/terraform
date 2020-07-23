variable "region"
{
type="string"
}
data aws_availability_zones "availzones"
{
availability_zone="${var.region}"
}
resource aws_instance "myinstance"
{
count="${length(data.aws_availability_zones.availzones.names)}"
ami="ami-0d6c336fc1df6d884"
instance_type="t2.micro"
availability_zone="${data.aws_availability_zones.availzones.names[count.index]}"
}