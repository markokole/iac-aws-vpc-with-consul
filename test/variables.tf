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
}
