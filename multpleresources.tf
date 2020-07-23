resource "aws_ebs_volume" "v3"
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
},
resource "aws_ebs_volume" "v2"
{
type="gp2"
availability_zone="ap-southeast-1a"
size=20
},
output "v3id"
{
value="${aws_ebs_volume.v1.id}"
}
output "v2arn"
{
value="${aws_ebs_volume.v2.arn}"
}