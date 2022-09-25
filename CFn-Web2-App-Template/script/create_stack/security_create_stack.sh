#!/bin/bash

### パラメータ指定 ###
PJPrefix="web2tier"
StackName="${PJPrefix}-Security-Stack"
TempPath="../../template/security.yml"

### スタック作成 ###
aws cloudformation create-stack \
 --stack-name ${StackName} \
 --template-body file://${TempPath} \
 --parameters ParameterKey=PJPrefix,ParameterValue=${PJPrefix} \


