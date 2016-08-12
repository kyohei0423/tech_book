# Table design

## Users
### association
- has_many :books
- has_many :orders

|culmn|type|
|-----|----|
|name|string|
|first_name|string|
|family_name|string|
|email|string|
|password|string|
|address|string|
|profile|text|
|avatar|string|
|account_number|integer|


## Books
### association
- has_one :order
- has_many :images
- belongs_to :user

|culumn|type|
|------|----|
|title|string|
|price|integer|
|description|text|
|status|integer|
|user_id|references|

## images
### association
- belongs_to :book

|culumn|type|
|------|----|
|content|string|
|book_id|references|

## orders
### association
- belongs_to :user
- belongs_to :book

|culumn|type|
|------|----|
|book_id|references|
|user_id|references|
