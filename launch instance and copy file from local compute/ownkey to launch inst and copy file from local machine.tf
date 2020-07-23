resource aws_instance "myinst"
{
ami="ami-063e3af9d2cc7fe94"
depends_on=["aws_key_pair.mykey"]
instance_type="t2.micro"
key_name="mynewkey"
availability_zone="ap-southeast-1a"
vpc_security_group_ids=["${aws_security_group.mynewsg.id}"]
provisioner "file"{
source= "./file1.txt"
destination="/home/ubuntu/uday.txt"
connection{
type="ssh"
user="ubuntu"
private_key="${file("./mynewkey")}"
}
}
}
resource "aws_security_group" "mynewsg"
{
 name        = "allowinboundtraffic"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-1d415f7a"
  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
	cidr_blocks=["0.0.0.0/0"]
  }
  }
 resource aws_key_pair "mykey"
{
key_name="mynewkey"
public_key="${file("./mynewkey.pub")}"
}
