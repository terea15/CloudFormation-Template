## RepositoryTitle：VpcNetwork-Demo
シンプルなVPCネットワークを構成するCloudFormationテンプレート<br>
CloudFormation開発の検証時にご使用下さい。

## リソース説明
- README.md
本書
- create_vpc.sh
テンプレートデプロイ用スクリプトを格納
- update_vpc.sh
テンプレートアップデート用スクリプトを格納
- vpc.yml
CFnテンプレート

## 構築サービス
本テンプレートでは下記のAWSサービスをデプロイする。
- VPC
- VPC IGW
- VPC NGW
- VPC Subnet(PublicAzA,C)(PrivateAzA,C)
- VPC RouteTable(PublicAzA,C)(PrivateAzA,C)

## 使用方法
- 構築
新規構築時は下記スクリプトを実行する。<br>
~/script/create_vpc.sh

- 更新
テンプレートの更新時は下記スクリプトを実行する。<br>
~/script/update_vpc.sh