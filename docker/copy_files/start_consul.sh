#!/bin/bash

aws configure set region us-east-1
aws configure set output text

# Start Consul agent
consul agent -dev -client "0.0.0.0" -config-file=/usr/lib/consul/encrypt_consul.json > /var/log/consul/consul.out &

# Start git2consul
git2consul --config-file  /usr/lib/git2consul/git2consul-config.json > /var/log/consul/git2consul.out
