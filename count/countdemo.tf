resource aws_ebs_volume "vol1"
{
count=2
size=20
type="gp2"
availability_zone="ap-southeast-1a"
}
output "vol1_id"
{
value="${aws_ebs_volume.vol1.*.id}"
}
output "vol1_id_0"
{
value="${aws_ebs_volume.vol1.*.id[0]}"
}