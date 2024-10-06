# コマンド集

## Go/Echo

```bash
# モジュールのインストール
go get [モジュール]
# モジュールの整理
go mod tidy
# サーバーの起動
go run main.go
```

## Docker

```bash
# AWSログイン
aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin [AWSID].dkr.ecr.ap-northeast-1.amazonaws.com

# ローカルDockerビルド
docker build -t [ローカルリポジトリ名] .

# タグ変更
docker tag [ローカルリポジトリ名]:latest [AWSID].dkr.ecr.ap-northeast-1.amazonaws.com/[ECRリポジトリ名]:latest

# ECRへDockerプッシュ
docker push [AWSID].dkr.ecr.ap-northeast-1.amazonaws.com/[ECRリポジトリ名]:latest
```
