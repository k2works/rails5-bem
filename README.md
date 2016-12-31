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

### サイト制作の下準備をしよう

#### indexページ作成

#### フォルダを整理する

#### 分割したファイルを読み込む「import機能」

#### リセットCSSを導入する

#### 背景色を設定する

#### まとめ
+ どんなサイトを作る場合でも、まずリセットCSSを導入する
+ コンポーネントごとにファイルを分けて、一覧できるようにする
+ 変数は、変数だけのファイルを作成すると管理が楽になって効率的

### Headerを作成しよう

#### コンポーネントを意識してマークアップしよう

#### HTMLをマークアップ

#### まとめ
+ コンポーネントを、まずはBlockとして作ってみる
+ 複雑なコンポーネントはBlockの中にBlockを作ってみる
+ Elementは汎用的な命名をなるべく使い、どこのBlockに属するのかをわかりやすくする

## Sassを使ったサイト制作 その１（ヘッダーなど）

### ヘッダーのスタイルを作成しよう

#### Flexを利用したヘッダーのCSS  

#### 「画像+記事」のコンポーネントを作る

#### ボタンを作成する

#### まとめ
+ レイアウトは極力Flexを使って書く
+ Flexのショートハンドの書き方に慣れる
+ それ以上細かくできないコンポーネントはpartsとして作る

### レイアウトを作成しよう  
  
#### レイアウトを整えるCSSを作る

#### 全体的な幅を決める
#### まとめ
+ レイアウトについてはCSSからわかるように「l-」を付ける
+ レイアウトはコンポーネントではないのでpartsフォルダに作成する
+ Sassの四則演算を上手に使ってレイアウトを整える

## Sassを使ったサイト制作 その２（メインコンテンツやフッターなど）

### メインイメージを作成しよう
#### カルーセルを組み込むには

#### インジケータの制作 

### コンテンツ部分を作成しよう

### フッターを作成しよう

### フォルダを整理しよう

# 参照 #
 + [現場のプロが本気で教える HTML/CSSデザイン講義](https://www.amazon.co.jp/dp/B01K3SZGR0/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1)
 + [現場のプロが本気で教える HTML/CSSデザイン講義 サンプルデータ](https://github.com/basara669/html_css_book)
 + [rspec-rails](https://github.com/rspec/rspec-rails)
 + [Rack::LiveReload](https://github.com/johnbintz/rack-livereload)
 + [Guard::LiveReload](https://github.com/guard/guard-livereload)
 + [Better Errors](https://github.com/charliesome/better_errors)
 + [Rails での適切な Sass の構成手法について（翻訳](http://qiita.com/natsu871/items/53b38a2543df97df751d)
 + [sanitize.css](https://jonathantneal.github.io/sanitize.css/)