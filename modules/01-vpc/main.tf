locals {
  datacenter = "${var.datacenter}"

  region = "${data.consul_keys.app.var.region}"
  path_to_generated_aws_properties = "${data.consul_keys.app.var.path_to_generated_aws_properties}"
  cidr_block = "${data.consul_keys.app.var.cidr_block}"
  vpc_name = "${data.consul_keys.app.var.vpc_name}"
  enable_dns_hostnames = "${data.consul_keys.app.var.enable_dns_hostnames}"
}

provider "aws" {
  region = "${local.region}"
}

resource "aws_vpc" "test_vpc" {
  cidr_block = "${local.cidr_block}"
  enable_dns_hostnames = "${local.enable_dns_hostnames}"

  tags {
    Name = "${local.vpc_name}"
  }
}
