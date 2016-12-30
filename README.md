Rails5-bem
===================

# 目的 #
[現場のプロが本気で教える HTML/CSSデザイン講義](https://www.amazon.co.jp/dp/B01K3SZGR0/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1)の内容をRails5で実装する

# 前提 #
| ソフトウェア   | バージョン   | 備考        |
|:---------------|:-------------|:------------|
| ruby           |2.4.0    |             |
| rails          |5.0.1    |             |
| vagrant        |1.8.2    |             |
| docker         |1.12.1   |             |
| docker-compose |1.8.0    |             |

# 構成 #
+ セットアップ
+ よいCSSを書くためのHTMLマークアップ-CSS設計-

## セットアップ

### 開発環境
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
```
$ cd /vagrant
$ bundle
$ ./bin/rails s -p 3000 -b '0.0.0.0'
```
`http://127.0.0.1:3000`から動作を確認する

### 本番環境
Dockerのセットアップ
```
$ vagrant ssh
$ cd /vagrant
$ docker-compose build
```
```
$ cd /vagrant
$ docker-compose up
```
`http://127.0.0.1:8888`から動作を確認する

## よいCSSを書くためのHTMLマークアップ-CSS設計-
### デザインカンプを確認し、CSS設計を理解しよう
#### コンポーネント
+ ヘッダー
+ カルーセル
+ サムネイル画像付きコンテンツ
+ オーバーレイパネル
+ アイコン付きコンテンツ
+ ニュースリスト
+ フッター

#### CSS設計
+ BEM
+ [OOCSS](http://oocss.org/)
+ [MCSS](http://operatino.github.io/MCSS/ja/)
+ [SMACSS](https://smacss.com/)

#### BEM
 + [BEM](https://en.bem.info/)
 + [MindBEMding](http://csswizardry.com/2013/01/mindbemding-getting-your-head-round-bem-syntax/)
 
#### classの命名規則について
+ Blockの最初の文字は大文字で書くこと
+ Elementの最初の文字は小文字で書く
+ BlockとElementは「__」でつなぐ
+ Modifierをつける場合は「--」でつなぐ

#### まとめ
 1. 最初は「見た目」からコンポーネントを割り出す
 1. 大文字や小文字などをうまく使い分ける
 1. 長いclass名はエディタの保管機能を使えば怖くない

# 参照 #
 + [現場のプロが本気で教える HTML/CSSデザイン講義](https://www.amazon.co.jp/dp/B01K3SZGR0/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1)
 + [現場のプロが本気で教える HTML/CSSデザイン講義 サンプルデータ](https://github.com/basara669/html_css_book)
