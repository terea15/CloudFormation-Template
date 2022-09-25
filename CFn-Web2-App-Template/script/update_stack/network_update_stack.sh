#!/bin/bash

### パラメータ指定 ###
PJPrefix="web2tier"
StackName="${PJPrefix}-Network-Stack"
TempPath="../../template/network.yml"

### スタック作成 ###
aws cloudformation update-stack \
 --stack-name ${StackName} \
 --template-body file://${TempPath} \
 --parameters ParameterKey=PJPrefix,ParameterValue=${PJPrefix} \


