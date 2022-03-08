## RepositoryTitle：AutoScaling-Demo
AutoScalingに対応したシンプルなWebサービスをデプロイするCloudFormationテンプレート

## リソース説明
- README.md
本書
- script
テンプレートデプロイ用スクリプトを格納
- template
CFnテンプレートを格納

## 構築サービス
本テンプレートでは下記のAWSサービスをデプロイする。
- VPC
- VPC Subnet(Public-AZ-A,C)
- VPC IGW
- VPC RouteTable(PublicSubnet-AZ-A,C)
- TargetGroup
- Application Load Balancer
- AutoScaling(EC2)

## 使用方法
- 構築
新規構築時は下記スクリプトを実行する。<br>
~/script/create_stack.sh

- 更新
テンプレートの更新時は下記スクリプトを実行する。<br>
~/script/update_stack.sh

***
## 参考
- [CloudFormationでAutoScaling+ALB+EC2の構築](https://qiita.com/toyoyuto618/items/e153194e7c32e01446de)