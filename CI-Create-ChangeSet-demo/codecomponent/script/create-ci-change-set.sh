#!/bin/bash

### パラメータ指定 ###
PJPrefix="CI-Create-ChangeSet-Demo"
StackName="${PJPrefix}-CI-ChangeSet-Stack"
TempPath="../ci-change-set.yml"

### スタック作成 ###
aws cloudformation create-stack \
 --stack-name ${StackName} \
 --template-body file://${TempPath} \
 --parameters ParameterKey=PJPrefix,ParameterValue=${PJPrefix} \
 --capabilities CAPABILITY_NAMED_IAM