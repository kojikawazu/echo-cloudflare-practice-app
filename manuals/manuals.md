# マニュアル集

## Cloudflare の導入

Cloudflareを使って、カスタムドメイン、SSL/TLS化を行います。
AWS App Runnerを構築済が前提となります。

1. CloudFlare にアクセスする。
2. まずは 自身のカスタムドメイン で新規登録する。
3. お名前.com のダッシュボードから CloudFlare のネームサーバーを登録する。
4. CloudFlare のダッシュボードへ移動し、DNS に移動する。
5. CNAME の登録を行う。
   - 名前：[カスタムドメイン]
   - 値：[App Runnerのドメイン]
6. SSL/TLS のダッシュボードへ移動し、Configure ボタンを押下する。
7. Custom SSL/TLS の Full (Strict) を選択し、保存する。
8. AWS App Runner のダッシュボードへ移動し、Configure DNS から カスタムドメイン を入力する。
9. 表示された CNAME のデータを Cloudflare のDNS側に登録する。
10. AWS App Runner の Configure DNS でステータスがアクティブになるまで、待機中...
11. アクティブになった後に https://[カスタムドメイン] でブラウザからアクセス

以上で Cloudflare の導入成功になります。
これでAWS App RunnerのバックエンドAPIを AWS ACM や Route53 を構築せずにカスタムドメイン化、SSL/TLS化ができました。