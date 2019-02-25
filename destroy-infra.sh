#!/bin/bash

COMMAND=destroy
#PWD=/home/centos/aws-consul-terraform/modules
PWD=/local-git/modules

#for i in {7..6}
#do
#    cd $PWD/0$i*
#    echo yes | terraform $COMMAND -var cluster_type=$1
#    rm *.tfstate*
#    cd ..
#done



for i in {5..1}
do
   cd $PWD/0$i*
   terraform init
   echo yes | terraform $COMMAND
   rm -f *.tfstate*
   cd ..
done

cd $PWD
cd ..

#echo "Restart consul..."
#sleep 5

#echo "Print out all key-values from consul:"
#consul kv get -recurse
