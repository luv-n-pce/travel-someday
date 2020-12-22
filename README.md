# アプリケーション名

travel someday

## 概要

旅行の思い出の投稿と旅行の計画を立てるアプリケーションを作成しました。ユーザーを登録すると旅行の思い出が投稿でき、マイページで旅行の計画を立てることができます。自身が作成した投稿は編集と削除をすることができます。また、場所などを検索欄に入力することで関連する投稿を検索することができます。思い出投稿の詳細画面では、他のユーザーの投稿にコメントをすることができます。さらに、トップページと詳細ページのハートのアイコンをクリックするといいねをすることができます。

## 本番環境

URL: https://travel-someday.herokuapp.com/

ID/Pass
  * ID: admin
  * Pass: 1234  
ログイン情報（テスト用）
  * メールアドレス: test@gmail.com
  * パスワード: test123

## 利用方法

* WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
* 接続先およびログイン情報については、上記の通りです。
* 同時に複数の方がログインしている場合に、ログインできない可能性があります。
* 思い出投稿方法
テストアカウントでログイン→トップページから「Post a memory」ボタン押下→思い出の情報を入力→思い出投稿
* 旅行計画投稿方法
テストアカウントでログイン→トップページのユーザー名を押下→「my plans」ボタン押下→＋ボタン押下→旅行計画情報入力→旅行計画投稿

## 制作背景（意図）

コロナの流行に伴い、外出を控えるようになり旅行にいける機会が減ったと思います。特に旅行が趣味だった方は、旅行にいけないことで楽しみの１つが無くなりストレスが溜まっていく可能性があると思いました。さらに、リモートワークが増えたことで自宅にいる時間も増え、人と関わることが減ったと思います。その中でも、旅行好きの人と交流することができれば、孤独を感じることも少なくなると考えました。また、旅行に行けるようになったときのために、旅行の計画を立てておけば、すぐに行くことができますし、その計画をご家族やご友人、パートナーの方と立てればストレスの解消にもつながると考えました。


## 洗い出した要件

* ユーザー管理機能
* 画像投稿機能
* 投稿の一覧表示機能
* 投稿詳細機能
* 計画投稿機能
* 投稿した計画の一覧表示機能
* コメント機能
* 検索機能
* いいね機能

## 実装した機能についてのGITと説明 DEMO

### トップページ（画像投稿一覧画面）

https://i.gyazo.com/d6eab5de100361d9be28a69c36d6458c.mp4

トップページでは、ユーザー新規登録・ログイン・ログアウト・マイページ・新規投稿ページへのアクセスができます。また、投稿された画像の一覧を見ることができます。

### 新規登録画面

https://i.gyazo.com/ce59e5383c5f5fed2538662a3b137ebe.png

### ログイン画面

https://i.gyazo.com/35d9ea280caaad66c6d9d324889b01a8.png

### 画像新規投稿画面

https://i.gyazo.com/5cba66a34432e20efa056bfb4b2e919f.mp4

### 詳細表示画面（コメント画面）

https://i.gyazo.com/4c5a7bfa04d4ad192e26b80704b0ab2d.mp4

* コメント
https://i.gyazo.com/615f19ae8d242cbf994165a2966c9a79.mp4

この機能で、他のユーザーとつながることができます。

### 編集・削除・いいね画面

* 編集
  https://i.gyazo.com/ad63ba1e45ee9c508da77bc5d966d0dd.mp4
* 削除
  https://i.gyazo.com/569537e874b1820c9318b8da6de27d67.mp4
* いいね
  https://i.gyazo.com/e5778639ec19e113a0ba7c63c503c6bc.mp4

  ハートのアイコンを押下すると、自分が気に入った投稿にいいねをすることができます。また、トップページの画像投稿一覧のハートのアイコンを押下してもいいねができます。

### 検索結果一覧画面

https://i.gyazo.com/1d30786ecba3c90c1d7965ce62b1b39d.mp4  
https://i.gyazo.com/b77880b76d4fe1b1c75f115ca72fcd6f.mp4

場所などを検索欄に入力すると検索ができ、関連する投稿の一覧を表示することができます。

### マイページ（画像投稿一覧画面）

https://i.gyazo.com/6390067483564c3bf121cc7c94e6434a.mp4

トップページの右上にあるユーザー名を押下すると、マイページにアクセスできます。マイページでは、自分が投稿した投稿のみ表示しています。また、マイページから旅行計画を立てるページにアクセスすることができます。

### 旅行計画投稿一覧画面

https://i.gyazo.com/bbe448bf99797ad887a67f21cf08fc84.mp4

マイページの「my plans」を押下すると、この旅行計画投稿一覧にアクセスできます。この機能で、旅行の計画を管理することができます。

### 旅行計画新規投稿ページ

https://i.gyazo.com/c82010462f330ae836a16087caf862e6.mp4

### 旅行計画詳細表示画面（編集・削除画面）

https://i.gyazo.com/26a7a8593a161736b221cfb4cc76cc42.mp4
* 編集
  https://i.gyazo.com/9aa169440fa822cc79c60b2761c79ce7.mp4
* 削除
  https://i.gyazo.com/da5233d7b48b33acaf67353871ec243d.mp4
 
## 工夫したポイント

作業工程を分割して細かくリリースしたことです。機能が多く、全てまとめて実装すると、万が一使い勝手が悪かった場合にやり直しが生じる可能性があると考えました。そこで、画面遷移図を作成し、1つずつ実装しデプロイをすることで、使い勝手を試しながら実装することができました。
また、編集・削除・いいねのアイコンにはFont Awesomeを使用し、見た目にもこだわり。

## 課題や今後実装したい機能
チャット機能を追加しようと考えています。一緒に旅行に行く予定の方とチャットでコミュニケーションが取れれば、スムーズに旅行の計画を立てることができると思います。

## 使用技術（開発環境）

* 開発環境
  * Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code / Trello
  * railsのバージョン: 6.0.0
  * mysql2のバージョン: 0.5.3
  * パッケージ: gem

## ローカルでの動作方法

* git clone https://github.com/luv-n-pce/travel-someday.git
* cd travel-someday
* bundle install
* yarn install
* rails db:create
* rails db:migrate
* rails s

# テーブル設計

## Usersテーブル

| Column             | Type          | Options                               |
| ------------------ | ------------- | ------------------------------------- |
| nickname           | string        | null: false, unique: true             |
| email              | string        | null: false, unique: true, index:true |
| encrypted_password | string        | null: false                           |

### Association 

- has_many :memories, dependent: destroy
- has_many :plans, dependent: destroy
- has_many :comments, dependent: destroy
- has_many :likes, dependent: destroy

## Memoriesテーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| start_date | date       | null: false                    |
| end_date   | date       | null: false                    |
| country_id | integer    | null: false                    |
| place      | string     | null: false                    |
| text       | text       | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_many :likes

## Plansテーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| country_id | string     | null: false                    |
| place      | string     | null: false                    |
| text       | text       | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## Commentsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| memory | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :memory

## Likesテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| memory | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :memory
