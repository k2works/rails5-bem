Rails5-bem
===================

# 目的 #
Rails5でBEMのサイトサンプルを作る

# 前提 #
| ソフトウェア   | バージョン   | 備考        |
|:---------------|:-------------|:------------|
| ruby           |2.4.0    |             |
| vagrant        |1.8.2    |             |
| docker         |1.12.5   |             |
| docker-compose |1.9.0    |             |

# 構成 #

## セットアップ
Rubyのインストール
```
$ cd ~/.rbenv
$ git pull origin master
$ cd ~/.rbenv/plugins/ruby-build
$ git pull origin master
$ rbenv install 2.4.0
$ rbenv global 2.4.0
$ gem install bundler
```
Dockerのセットアップ
```
$ vagrant ssh
$ cd /vagrant
$ docker-compose build
```

## 開発環境
```
$ cd /vagrant
$ bundle
$ ./bin/rails s -p 3000 -b '0.0.0.0'
```
`http://127.0.0.1:3000`

## 本番環境
```
$ cd /vagrant
$ docker-compose up
```
`http://127.0.0.1:8888`

# 参照 #
