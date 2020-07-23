variable "vol"
{
default=[10,20,30,40]
}
resource aws_ebs_volume "volum"
{
count="${length(var.vol)}"
availability_zone="ap-southeast-1a"
type="gp2"
size="${var.vol[count.index]}"

}
output "voloutput"
{
value="${length(var.vol)}"
}