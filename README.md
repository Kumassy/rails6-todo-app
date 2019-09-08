# rails6-todo-app
Rails6 で遊んでみた

## ユーザー認証
omniauth を使う。OAuth 以外でユーザーを作成することはしないので、 devise と組み合わせることはしなくてよい

see:
https://qiita.com/white0221/items/19d18a4e494c4cb68dae#direnv

## credentials
シークレットは dotenv とか環境変数でもたせるのではなく、 credentials を使う

```
$ EDITOR="vim" bin/rails credentials:edit
```

とかする


## Webpacker
普通に `yarn` が使えていい感じに React がかける。 props の受け渡しはどうしよう...