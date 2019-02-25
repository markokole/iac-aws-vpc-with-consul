variable "path_in_consul" {
  default   = "test/master/aws/test-instance"
}


variable "consul_server" {
  default   = "127.0.0.1"
}
variable "consul_port" {
  default   = "8500"
}
variable "datacenter" {
  default   = "dc1"
}

data "consul_keys" "app" {
  key {
    name    = "region"
    path    = "${var.path_in_consul}/region"
  }
  key {
    name    = "path_to_generated_aws_properties"
    path    = "${var.path_in_consul}/path_to_generated_aws_properties"
  }
}

data "consul_keys" "aws" {
  key {
    name    = "vpc_id"
    path    = "${data.consul_keys.app.var.path_to_generated_aws_properties}/vpc_id"
  }
  key {
    name    = "gateway_name"
    path    = "${data.consul_keys.app.var.path_to_generated_aws_properties}/gateway_name"
  }
}
