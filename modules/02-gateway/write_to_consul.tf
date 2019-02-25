resource "consul_keys" "app" {
  datacenter = "${local.datacenter}"

  key {
    path = "${local.path_to_generated_aws_properties}/igw_id"
    value = "${aws_internet_gateway.terraform_igw.id}"
  }
}
