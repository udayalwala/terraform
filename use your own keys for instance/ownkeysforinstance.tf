resource aws_key_pair "mykey"
{
key_name="mynewkey"
public_key="${file("./mynewkey.pub")}"
}
resource aws_instance "myinstance"
{
depends_on=["aws_key_pair.mykey"]
ami="ami-0d6c336fc1df6d884"
availability_zone="ap-southeast-1a"
instance_type="t2.micro"
}