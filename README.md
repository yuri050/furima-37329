# テーブル設計

## users_table

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |ニックネーム
| password           | string | null: false               |パスワード
| email              | string | null: false, unique: true |メール
| family_name        | string | null: false               |苗字
| first_name         | string | null: false               |名前
| family_name_kana   | string | null: false               |かな苗字
| first_name_kana    | string | null: false               |かな名前
| birthday           | date   | null: false               |誕生日


### Association

- has_many :items_table  #1対多
- has_many :Recording_table


## items_table

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| seller         | references | null: false                    |出品者
| name           | string     | null: false                    |商品名
| introduction   | text       | null: false                    |説明
| category       | integer    | null: false                    |カテゴリー（選択）
| item_condition | integer    | null: false                    |商品の状態（選択）
| Shipping_cost  | integer    | null: false                    |配送料の負担（選択）
| Delivery_area  | integer    | null: false                    |配送元の地域（選択）
| Delivery_day   | integer    | null: false                    |配送までの日数（選択）
| price          | string     | null: false                    |価格
| commission     | string     | null: false                    |手数料（自動入力）
| Sales_profit   | string     | null: false                    |販売利益（自動入力）

### Association

- has_many   :users_table  
- belongs_to :Recording_table  #1対1


## Recording_table

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| buyer            | references | null: false                    |購入者
| item_information | string     | null: false                    |商品情報
| payment          | string     | null: false                    |支払い金額

### Association

- has_many  :users_table
- belongs_to :items_table

- ## Shipping_information

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| post_code           | string     | null: false                    |郵便番号
| city                | string     | null: false                    |都道府県（選択）
| municipalities_code | string     | null: false                    |市区町村
| house_address       | string     | null: false                    |番地
| building_name       | string     | null: false                    |建物名（任意）
| phone_number        | string     | null: false                    |電話番号

### Association

- belongs_to :Recording_table