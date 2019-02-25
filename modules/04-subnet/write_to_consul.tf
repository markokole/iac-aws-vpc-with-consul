resource "consul_keys" "app" {
  datacenter = "${local.datacenter}"

  key {
    path = "${local.path_to_generated_aws_properties}/subnet_id"
    value = "${aws_subnet.test_subnet.id}"
  }
}
