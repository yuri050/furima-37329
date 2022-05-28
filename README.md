# テーブル設計

## users_table  #ユーザー情報

| Column             | Type       | Options                   |
| ------------------ | ---------- | ------------------------- |
| nickname           | string     | null: false               |ニックネーム
| encrypted_password | string     | null: false               |パスワード
| email              | string     | null: false, unique: true |メール
| family_name        | string     | null: false               |苗字
| first_name         | string     | null: false               |名前
| family_name_kana   | string     | null: false               |かな苗字
| first_name_kana    | string     | null: false               |かな名前
| birthday           | date       | null: false               |誕生日


### Association

- has_many :items  #1対多
- has_many :recordings  #1対多


## items_table  #商品情報

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| name              | string     | null: false                    |商品名
| introduction      | text       | null: false                    |説明
| category_id       | integer    | null: false                    |カテゴリー（選択）Activehashで実装
| item_condition_id | integer    | null: false                    |商品の状態（選択）Activehashで実装
| shipping_cost_id  | integer    | null: false                    |配送料の負担（選択）Activehashで実装
| city_id           | integer    | null: false                    |都道府県（配送元の地域（選択）Activehashで実装
| delivery_day_id   | integer    | null: false                    |配送までの日数（選択）Activehashで実装
| price             | integer    | null: false                    |価格
| user              | references | null: false,foreign_key: true  |ユーザーテーブルの外部キー「誰が買ったか」

### Association

- belongs_to :user  #多対1
- has_one    :recording  #1対1親


## recordings_table  #購入管理

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user             | references | null: false,foreign_key: true  |ユーザーテーブルの外部キー「誰が買ったか」
| items            | references | null: false,foreign_key: true  |商品情報テーブルの外部キー「何を買ったか」

### Association

- belongs_to :user  #多対1
- belongs_to :item  #1対1子
- has_one    :addresses  #1対1親

- ## addresses  ＃発送先情報

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| post_code           | string     | null: false                    |郵便番号
| city_id             | integer    | null: false                    |都道府県（選択）Activehashで実装
| municipalities_code | string     | null: false                    |市区町村
| house_address       | string     | null: false                    |番地
| building_name       | string     |                                |建物名（任意）
| phone_number        | string     | null: false                    |電話番号
| recording           | references | null: false,foreign_key: true  |購入管理テーブルの外部キー「この商品は誰が出品したものなのか」

### Association

- belongs_to  :recording  #1対1子