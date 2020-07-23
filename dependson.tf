resource aws_instance "myinstance"
{
ami="ami-0d6c336fc1df6d884"
instance_type="t2.micro"
}
resource "aws_eip" "myeip"
{
}
resource aws_ebs_volume "volume1"
{
depends_on=["aws_instance.myinstance","aws_eip.myeip"]
type="gp2"
availability_zone="ap-southeast-1a"
size=12
}
resource "aws_volume_attachment" "instvvolatt"
{
device_name="/dev/sdf"
instance_id="${aws_instance.myinstance.id}"
volume_id="${aws_ebs_volume.volume1.id}"
}