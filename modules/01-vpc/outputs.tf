output "vpc_id" {
  value = "${aws_vpc.test_vpc.id}"
}
output "cidr_block" {
  value = "${aws_vpc.test_vpc.cidr_block}"
}
output "main_route_table_id" {
  value = "${aws_vpc.test_vpc.main_route_table_id}"
}
output "default_security_group_id" {
  value = "${aws_vpc.test_vpc.default_security_group_id}"
}
output "default_network_acl_id" {
  value = "${aws_vpc.test_vpc.default_network_acl_id}"
}
