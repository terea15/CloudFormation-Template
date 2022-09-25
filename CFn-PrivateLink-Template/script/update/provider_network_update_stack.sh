#!/bin/bash

### パラメータ指定 ###
PJPrefix="privatelink-dev"
StackName="${PJPrefix}-Provider-Network-Stack"
TempPath="../../template/provider_network.yml"

### スタック作成 ###
aws cloudformation update-stack \
 --stack-name ${StackName} \
 --template-body file://${TempPath} \
 --parameters ParameterKey=PJPrefix,ParameterValue=${PJPrefix} \
 --capabilities CAPABILITY_NAMED_IAM

