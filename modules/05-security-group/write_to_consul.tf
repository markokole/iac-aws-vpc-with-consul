resource "consul_keys" "app" {
  datacenter = local.datacenter

  key {
    path  = "${local.path_to_generated_aws_properties}/port_22_to_world"
    value = aws_security_group_rule.port_22_to_world.id
  }
}

