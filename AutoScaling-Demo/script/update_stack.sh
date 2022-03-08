#!/bin/bash

### パラメータ指定 ###
PJPrefix="ASG-Env"
StackName="${PJPrefix}-ASG-Env-Stack"
TempPath="../template/autoscalinggroup.yml"

### スタック作成 ###
aws cloudformation update-stack \
 --stack-name ${StackName} \
 --template-body file://${TempPath} \
 --parameters ParameterKey=PJPrefix,ParameterValue=${PJPrefix} \
 --capabilities CAPABILITY_NAMED_IAM