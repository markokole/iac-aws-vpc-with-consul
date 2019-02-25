locals {
  datacenter = "${local.datacenter}"
  region = "${data.consul_keys.app.var.region}"
  path_to_generated_aws_properties = "${data.consul_keys.app.var.path_to_generated_aws_properties}"
  default_security_group_id = "${data.consul_keys.aws.var.default_security_group_id}"

}

provider "aws" {
  region = "${local.region}"
}

resource "aws_security_group_rule" "port_22_to_world" {
  type        = "ingress"
  description = "SSH to world"
  from_port   = "22"
  to_port     = "22"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = "${local.default_security_group_id}"
}

resource "aws_security_group_rule" "port_8080_to_world" {
  type        = "ingress"
  description = "Ambari to world"
  from_port   = "8080"
  to_port     = "8080"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = "${local.default_security_group_id}"
}

resource "aws_security_group_rule" "port_6080_to_world" {
  type        = "ingress"
  description = "Ranger to world"
  from_port   = "6080"
  to_port     = "6080"
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = "${local.default_security_group_id}"
}
