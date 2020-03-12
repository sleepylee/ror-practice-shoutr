# README

### Guideline:
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

- Generate more pages from `clearance`:
  `$ rails g clearance:views`

- Add new field to table Users:
  `$ rails g migration AddUsernameToUsers username:string:index`
  To make `username` in db unique -> update it in the migration file.

- Run db migration:
  `$ rails db:migrate`

- Because we updated the User schema, but Clearance::UsersController has a different permit mechanism, 
  so we need to disable Clearance's routes and use our own. 
  First we add all the routes from `clearance` to our routes.rb
  `$ rails g clearance:routes`
  Then we pointed out that we don't want to use `controller: "clearance/users"` by removing it from the routes.rb

- To add a new Shout (Tweet) model with: [body] and [user](reference)
  `$ rails g model Shout body user:references`
  after you have ensure your migration file met expectations, run db:migrate

- To update a schema of the db, says we want to enforce a field NOT null, run a new migration
  `$ rails g migration AddNullFalseToShout`
  then go update inside the migration file it just created: `..._add_null_false_to_shout.rb`, then db:migrate
  `$ rails db:migrate`

- Install imagemagick with brew because paperclip needs it
  `$ brew install imagemagick`

- Adding new table with 2 foreign keys
  `$ rails g model Like user:references shout:references`
  Update the migration file to define index and then db:migrate

- To visualize the connection between the follower and followed user, we create another table with 2 of them are foreigner keys
  `$ rails g model FollowingRelationship follower:references followed_user:references`
  Update the migration file to define the foreign key, then db:migrate

- To add a counter of the follower (following Relationship counter), start adding a new table
  `$ rails g migration AddFollowingRelationshipCounterCachesToUsers followed_users_count:integer followers_count:integer`
  Update the default value of integer counter to 0 and set non-nullable, then db:migrate