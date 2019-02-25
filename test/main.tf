provider "aws" {
  region = "${data.consul_keys.app.var.region}"
}

module "vpc" {
  source = "../01-vpc"
}

module "gateway" {
  source = "../modules/02-gateway"
}

module "route-table" {
  source = "../modules/03-route-table"
}

module "subnet" {
  source = "../modules/04-subnet"
}

module "security-group" {
  source = "../modules/05-security-group"
}

module "instance" {
  source = "../modules/06-instance"
}
