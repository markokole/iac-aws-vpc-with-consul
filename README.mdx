# aws-consul-terraform

The repository creates HDP cluster in AWS using Terraform and Ansible.

## Work environment
Inside folder *docker* is work environment used for development and testing. The solution is for Windows 10 and has not been tested on Linux. With minor adjustments it can surely work on Linux as well. The README.md in the folder explains how to create the image and enter the container.

## Prepare infrastructure
The infrastructure on AWS has to be build first. This infrastructure can be reused for other HDP clusters and other projects. Inside folder `modules` are  folders with names starting from `01` to `06`. These build the AWS infrastructure. Infrastructure can be build by manually provisioning every module or it can be done by running the shell script:
- step into the home directory of the project: `cd local-git` and run `. create-infra.sh` - this creates the AWS infrastructure - VPC, Subnet, Security group...

The infrastructure can be destroyed in the following way:
- step into the home directory of the project: `cd local-git` and run `. destroy-infra.sh` - this destroys the AWS infrastructure. *Make sure you do not have any instances running on the infrastructure*

## Add S3 secrets to Consul
Prior to provisioning, in order to use S3 storage, the secrets should be put to Consul.
`consul kv put aws/s3a/access_key <ACCESS_KEY>`
and
`consul kv put aws/s3a/secret_key <SECRET_KEY>`
This way, terraform will fetch the secrets from consul. Remember, this is local Consul, running on the provisioner (machine you use for provisioning clusters).

## Provisioning
Step into `cd modules/07-provision-hdp` to create an HDP cluster. It is possible to create a single node cluster or a multinode HA cluster. The configuration of the cluster is prepared in [separate github repository](https://github.com/markokole/aws-terraform-hdp-config). The name of the cluster should be copied to *terraform.tfvars* in the following key-value format: `cluster_type = "single-min-s3"`.

### Initialization
Loading the modules and dependencies
`terraform init`

### Show plan
Show the provisioning plan - what is terraform planning to create.
`terraform plan`

### Run provisioning
Build the cluster - smart to run it with `nohup` and write output to a file
`nohup terraform apply -auto-approve > apply.log &`

### Destroy the HDP cluster
`terraform destroy -auto-approve`
