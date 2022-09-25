# CloudFormation-Template
## 説明
CloudFormationテンプレートを格納するリポジトリ

## ブランチ戦略
### ブランチ構成
No.|ブランチ名|説明
--|--|--
1.|master|本番ブランチ
2.|dev|開発/作業用ブランチ

### ブランチの運用ルール
- 開発開始時点でmasterブランチからdevブランチを作成
- 開発作業は全てdevブランチにコミット
- リリース時は、dev → masterへマージ
- 管理人以外の第三者によるmasterブランチへのマージは、必ずMRを通すこと

## ディレクトリ構成
No.|リソース名|説明
--|--|--
1.|README.md|-
2.|CFn-AutoScaling-Template|AutoScalingに対応したシンプルなWebサービスをデプロイするCloudFormationテンプレート
3.|CFn-CI-Create-ChangeSet-Template|CodeCommitの更新(push)から変更セットの作成までを自動化するCIのサンプルテンプレート
4.|CFn-SorryPage-on-ALB-Template|ALBでSorryページを表示させるCloudFormationテンプレート
5.|CFn-ECS-Template|ECS(EC2, Fargate)を構築するCloudFormationテンプレート
6.|CFn-VpcNetwork-Template|シンプルなVPC環境を構築するCloudFormationテンプレート
7.|CFn-PrivateLink-Template|異なるVPC間でプライベートリンクを経由して接続可能なWeb環境を構築するサンプルテンプレート
8.|CFn-Web2-App-Template|Web2階層アプリケーションを構築するCloudFormationテンプレート

---
## ライセンス
- 当リポジトリはchibiharu(管理人)の個人的資産です
- 当リポジトリはchibiharu(管理人)の所属している企業との関係は一切ありません
- 当リポジトリはライセンスフリーですのでご自由にお使い下さい
- 当リポジトリのソースコードは機能面での細かい検証は行っていない為、思わぬバグが存在している可能性があります
- 当リポジトリのソースコードを利用し、資産の損失を招くような事故が発生しても、当方は一切の責任を負いかねます
