# Write values to consul
resource "consul_keys" "app" {
  datacenter = "${local.datacenter}"

  key {
    path = "${local.path_to_generated_aws_properties}/vpc_id"
    value = "${aws_vpc.test_vpc.id}"
  }
  key {
    path = "${local.path_to_generated_aws_properties}/cidr_block"
    value = "${aws_vpc.test_vpc.cidr_block}"
  }
  key {
    path = "${local.path_to_generated_aws_properties}/main_route_table_id"
    value = "${aws_vpc.test_vpc.main_route_table_id}"
  }
  key {
    path = "${local.path_to_generated_aws_properties}/default_security_group_id"
    value = "${aws_vpc.test_vpc.default_security_group_id}"
  }
  key {
    path = "${local.path_to_generated_aws_properties}/default_network_acl_id"
    value = "${aws_vpc.test_vpc.default_network_acl_id}"
  }
}
