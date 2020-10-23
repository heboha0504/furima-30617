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
| berth_day    | date        | null: false |

### Association

- has_many :user_items
- has_many :items, through: :user_items
- has_many :purchases


### user_items テーブル

| Column  | Type      | Options                        |
|-------- |-----------|--------------------------------|
| user    | reference | null: false, foreign_key: true |
| item    | reference | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :items


### items テーブル

| Column      | Type      | Options                        |
|-------------|-----------|--------------------------------|
| item_name   | string    | null: false                    |
| info        | text      | null: false                    |
| category    | reference | null: false, foreign_key: true |
| status      | reference | null: false, foreign_key: true |
| cost        | reference | null: false, foreign_key: true |
| area        | reference | null: false, foreign_key: true |
| day         | reference | null: false, foreign_key: true |
| prise       | integer   | null: false                    |
| user        | reference | null: false, foreign_key: true |

### Association

- has_many :user_items
- has_many :users, through: :user_items
- has_one :purchases


### purchases テーブル

| Column        | Type      | Options                        |
|---------------|-----------|--------------------------------|
| card_number   | integer   | null: false                    |
| deadline      | integer   | null: false                    |
| deadline      | integer   | null: false                    |
| security_code | integer   | null: false                    |
| postal        | string    | null: false                    |
| pref          | reference | null: false, foreign_key: true |
| city          | string    | null: false                    |
| address       | string    | null: false                    |
| building      | string    |                                |
| phon          | integer   | null: false                    |
| comment       | text      |                                |
| user          | reference | null: false, foreign_key: true |

### Association

- belongs_to :users
- has_one :items