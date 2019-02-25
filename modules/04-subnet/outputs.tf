#output "vpc_id" {
#  value = "${aws_subnet.terraform_subnet.vpc_id}"
#}

output "subnet_id" {
  value = "${aws_subnet.test_subnet.id}"
}

#output "cidr_block" {
#  value = "${aws_subnet.terraform_subnet.cidr_block}"
#}
