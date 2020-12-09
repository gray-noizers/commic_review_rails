# テーブル設計

## users テーブル

| Column               | Type    | Options                   |
| -------------------- | ------- | ------------------------- |
| nickname             | string  | null: false               |
| email                | string  | null: false, unique: true |
| encrypted_password   | string  | null: false               | 

### Association

- has_many :reviews
 
 

## reviews テーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| review_title         | string     | null: false                    |
| commic_title         | string     | null: false                    |
| text                 | text       | null: false                    |
| evaluation_id        | integer    | null: false                    |

### Association

- belongs_to :user
