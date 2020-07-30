#! /bin/bash

STACKNAME=awsbootstrap
REGION=us-east-1
CLI_PROFILE=awsbootstrap

EC2_INSTANCE_TYPE=t2.micro

# Deploy the Cloudformation Template
echo -e "\n\n============== Deploying main.yml ========================="
aws cloudformation deploy \
	--region $REGION \
	--profile $$CLI_PROFILE \
	--stack-name $STACKNAME \
	--template-file main.yml \
	--no-fail-on-empty-changeset \
	--capabilities CAPABILITY_NAMED_IAM \
	--parameter-overrides \
	EC2InstanceType=$EC2_INSTANCE_TYPE
