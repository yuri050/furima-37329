# テーブル設計

## users テーブル

| Column             | Type   | Options                                |
| ------------------ | ------ | -------------------------------------- |
| nickname           | string | null: false                            |
| password           | string | null: false                            |
| email              | string | null: false, unique: true, index: true |
| family_name        | string | null: false                            |
| first_name         | string | null: false                            |
| family_name_kana   | string | null: false                            |
| first_name_kana    | string | null: false                            |
| birth_date         | date   | null: false                            |


### Association

- 
- 


## profiles  テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |



### Association

- 
- 