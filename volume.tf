resource "aws_ebs_volume" "v1"
{
type="gp2"
availability_zone="ap-southeast-1a"
size=10
tags=
{
"Name"="terraform"
"env"="dev"
"application"="IB"
}
}