locals {
  datacenter = "${var.datacenter}"

  region = "${data.consul_keys.app.var.region}"
  path_to_generated_aws_properties = "${data.consul_keys.app.var.path_to_generated_aws_properties}"

  vpc_id = "${data.consul_keys.aws.var.vpc_id}"
  gateway_name = "${data.consul_keys.aws.var.gateway_name}"
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
