variable "vol-size"
{
type="string"

}
variable "vol-az"
{
type="string"
}
resource aws_ebs_volume "myvol"
{
size="${var.vol-size}"
availability_zone="${var.vol-az}"
type="gp2"
}