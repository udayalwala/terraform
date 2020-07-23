resource aws_instance "instance1"
{
ami="ami-063e3af9d2cc7fe94"
instance_type="t2.micro"
user_data="${file("./1.sh")}"
subnet_id="${aws_subnet.publicsubnet.id}"
associate_public_ip_address="true"
}
resource "aws_eip" "elasticip" {
  instance = "${aws_instance.instance1.id}"
  vpc      = true
}