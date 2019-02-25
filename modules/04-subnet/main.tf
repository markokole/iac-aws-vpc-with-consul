locals {
  datacenter = "${local.datacenter}"
  region = "${data.consul_keys.app.var.region}"
  vpc_id     = "${data.consul_keys.aws.var.vpc_id}"
  cidr_block = "${data.consul_keys.app.var.cidr_block}"
  availability_zone = "${data.consul_keys.app.var.availability_zone}"
  map_public_ip_on_launch = "${data.consul_keys.app.var.map_public_ip_on_launch}"
  subnet_name = "${data.consul_keys.app.var.subnet_name}"

  path_to_generated_aws_properties = "${data.consul_keys.app.var.path_to_generated_aws_properties}"
}

provider "aws" {
  region = "${local.region}"
}

resource "aws_subnet" "test_subnet" {
  vpc_id     = "${local.vpc_id}"
  cidr_block = "${local.cidr_block}"
  availability_zone = "${local.availability_zone}"
  map_public_ip_on_launch = "${local.map_public_ip_on_launch}"

  tags {
    Name = "${local.subnet_name}"
  }
}
