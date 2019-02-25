locals {
  datacenter = "${local.datacenter}"
  region = "${data.consul_keys.app.var.region}"

  route_table_id = "${data.consul_keys.aws.var.main_route_table_id}"
  igw_id = "${data.consul_keys.aws.var.igw_id}"

  destination_cidr_block = "${data.consul_keys.app.var.route_table_cidr_block_all}"
  path_to_generated_aws_properties = "${data.consul_keys.app.var.path_to_generated_aws_properties}"
}

provider "aws" {
  region = "${local.region}"
}

resource "aws_route" "route" {
  route_table_id            = "${local.route_table_id}"
  gateway_id                = "${local.igw_id}"
  destination_cidr_block    = "${local.destination_cidr_block}"
}
