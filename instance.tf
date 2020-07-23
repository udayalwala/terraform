resource aws_instance "myinstance"
{
ami="ami-0d6c336fc1df6d884"
instance_type="t2.micro"
}
resource "aws_volume_attachment" "instvvolatt"
{
device_name="/dev/sdf"
instance_id="${aws_instance.myinstance.id}"
volume_id="${aws_ebs_volume.v2.id}"
}
output "pip"
{
value="${aws_instance.myinstance.public_ip}"

}