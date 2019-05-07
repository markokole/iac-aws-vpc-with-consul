locals {
  datacenter = "${var.datacenter}"

  region = "${data.consul_keys.app.var.region}"
  path_to_generated_aws_properties = "${var.path_in_consul}/${data.consul_keys.app.var.path_to_generated_aws_properties}"
  gateway_name = "${data.consul_keys.app.var.gateway_name}"

  vpc_id = "${data.consul_keys.aws.var.vpc_id}"
}

provider "aws" {
  region = "${local.region}"
}

resource "aws_internet_gateway" "terraform_igw" {
  vpc_id = "${local.vpc_id}"

  tags {
    Name = "${local.gateway_name}"
  }
}
