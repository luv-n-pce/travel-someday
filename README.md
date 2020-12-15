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
| date       | date       | null: false                    |
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