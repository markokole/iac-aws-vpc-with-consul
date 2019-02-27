# The repository creates infrastructure on AWS

## Work environment
Inside folder *docker* is work environment used for development and testing. The solution is for Windows 10 and has not been tested on Linux. With minor adjustments it can surely work on Linux as well. The README.md in the folder explains how to create the image and enter the container.

## Prepare infrastructure
Inside folder `modules` are  folders with names starting from `01` to `05`. These build the AWS infrastructure. Infrastructure can be build by manually provisioning every module or it can be done by running the shell script:
- step into the home directory of the project and run `. create-infra.sh` - this creates the AWS infrastructure - VPC, Subnet, Security group...
**Before you can run it make sure you export the AWS access key and secret**
export AWS_ACCESS_KEY_ID=<AWS_ACCESS_KEY_ID>
export AWS_SECRET_ACCESS_KEY=<AWS_SECRET_ACCESS_KEY>

The infrastructure can be destroyed in the following way:
Step into the home directory of the project and run `. destroy-infra.sh` - this destroys the AWS infrastructure.
*Make sure you do not have any instances running on the infrastructure*

## Add S3 secrets to Consul
Prior to provisioning, in order to use S3 storage, the secrets should be put to Consul.
`consul kv put aws/s3a/access_key <ACCESS_KEY>`
and
`consul kv put aws/s3a/secret_key <SECRET_KEY>`
This way, terraform will fetch the secrets from consul. Remember, this is local Consul, running on the provisioner (machine you use for provisioning clusters) so **if you plan to put Consul on a server, consider security measurements**.


## Provisioning manually
For every folder in folder `modules` do the following:

### Initialization
Loading the modules and dependencies
`terraform init`

### Show plan
Show the provisioning plan - what is terraform planning to create.
`terraform plan`

### Run provisioning
Build the cluster - smart to run it with `nohup` and write output to a file
`nohup terraform apply -auto-approve > apply.log &`

## Destroying the infrastructure
Step into the home directory of the project and run `. destroy-infra.sh`.

### Manually destroying infrastructure
Step into folders in folder `modules` from `05` to `01` and in each one run:
`terraform destroy -auto-approve`
**Order is important here since AWS does not allow to remove objects which are dependencies.**
