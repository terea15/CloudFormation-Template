# 1. RepositoryTitle：CI-Create-ChangeSet-demo
CodeCommitで管理しているCFnテンプレートの更新(push)から変更セットの作成までを自動化するCIのデモ

## 1.1 構成図
※準備中

## 1.2 リポジトリ階層図
※準備中

# 2. メンテナンス
本プロジェクトの更新に関して、概要、及び手順を以下に記載する。

## 2.1 概要
CodePiplineにて、CodeCommitへのpushからCFnの変更セットの作成までを自動化している。
大まかな更新手順としては、CFnテンプレートの更新後、GitHubへテンプレートを上げる。
その後、変更セットが作成されることを確認し、変更内容を確認後、変更セットを実行する。

## 2.2 CI経路
- トリガー：CodeCommitのtemplate配下にpush
- 経路：ユーザ(push) ⇒ odeCommit ⇒ CodeBuild(pushを検知して発火する) ⇒ CodePipline(変更セット作成)

## 2.3 更新手順
- リポジトリに変更を加えた場合
    - 手順１：下記コマンドを実行して、CodeCommitへ更新内容を上げる。
    git add .
    git commit -m "変更内容"
    git push origin master
    - 手順２：AWSのマネージメントコンソールを開き、CodePiplineコンソール画面へ遷移する
    - 手順３；対象のPipeline管理画面を開き、パイプが途中で失敗していないことを確認する
    - 手順４；CloudFormationコンソール画面へ遷移して、変更セットが作成されていることを確認する
    - 手順５；更新内容に問題がないことを確認して、変更セットを実行する
    - 手順６：変更セットが無事通ったことを確認する

# 3. 構築
本CFnデモの構築手順を以下に記載する。

## 3.1 事前準備
環境構築にあたり、事前に以下の要件を満たしている必要がある。
- 任意のプロパイダーでドメインを取得済であり、Route53にてパブリックホストゾーンが作成済であること

## 3.2 構築手順
1. ：xxxxx
2. ：xxxxx

***
## 参考
- [AWS CloudFormation、CodePipelineとGitHubで快適CI/CD環境構築](https://www.blogchin.net/blogs/9ngcyrw80/)
- [GitHub/CodeBuild/CodePipelineを利用してCloudFormationのCI/CDパイプラインを構築する](https://dev.classmethod.jp/articles/developing-cloudformation-ci-cd-pipeline-with-github-codebuild-codepipeline/)