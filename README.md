# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


###  users テーブル

| Column       | Type        | Options     |
|------------- |-------------|-------------|
| nickname     | string      | null: false |
| email        | string      | null: false |
| password     | string      | null: false |
| first_name   | string      | null: false |
| last_name    | string      | null: false |
| surname      | string      | null: false |
| name         | string      | null: false |
| birth_day    | date        | null: false |

### Association

- has_many :user_items
- has_many :purchases
- has_many :items


### user_items テーブル

| Column  | Type       | Options                        |
|-------- |------------|--------------------------------|
| user    | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item


### items テーブル

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| name        | string     | null: false                    |
| info        | text       | null: false                    |
| category_id | integer    | null: false                    | 
| status_id   | integer    | null: false                    |
| cost_id     | integer    | null: false                    |
| area_id     | integer    | null: false                    |
| day_id      | integer    | null: false                    |
| prise       | integer    | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

- has_one :user_item
- belongs_to :user


### purchases テーブル

| Column        | Type       | Options                        |
|---------------|------------|--------------------------------|
| postal        | string     | null: false                    |
| pref_id       | integer    | null: false                    |
| city          | string     | null: false                    |
| address       | string     | null: false                    |
| building      | string     |                                |
| phon          | string     | null: false                    |
| user_item     | references | null: false, foreign_key: true |

### Association

- belongs_to :user_item