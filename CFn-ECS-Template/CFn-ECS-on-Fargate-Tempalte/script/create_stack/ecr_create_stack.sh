#!/bin/bash

### パラメータ指定 ###
PJPrefix="CFn-ECS-on-Fargate"
StackName="${PJPrefix}-ECR-Stack"
TempPath="../../template/ecr.yml"

### スタック作成 ###
aws cloudformation create-stack \
 --stack-name ${StackName} \
 --template-body file://${TempPath} 