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
  key {
    name    = "cidr_block"
    path    = "${var.path_in_consul}/cidr_block"
  }
  key {
    name    = "vpc_name"
    path    = "${var.path_in_consul}/vpc_name"
  }
  key {
    name    = "enable_dns_hostnames"
    path    = "${var.path_in_consul}/enable_dns_hostnames"
  }
}
