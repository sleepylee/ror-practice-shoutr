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


### Commands that I entered:
- Init rails project:
  `$ rails new shoutr -d postgresql -B -T`

- Add gem `clearance` and run bundle install:
  `$ bundle install`

- Create db: 
  `rails db:create`

- Init clearance:
  `$ rails g clearance:install`
  * Note: to see all possible rails generator run: `$ rails g`

- Migrate Database:
  `$ rails db:migrate`

- Install webpacker:
  `$ rails webpacker:install`

- Run server:
  `$ rails s`