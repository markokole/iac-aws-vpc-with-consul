resource "consul_keys" "app" {
  datacenter = "${local.datacenter}"

  key {
    path = "${local.path_to_generated_aws_properties}/route_id"
    value = "${aws_route.route.id}"
  }
}
