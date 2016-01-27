Yelp Clone Challenge
====================
This is a solution to Makers Academy's [Yelp Clone Challenge](https://github.com/makersacademy/course/blob/master/rails/yelp.md).
This seeks to mimic [Yelp](http://www.yelp.co.uk), a website for rating and reviewing restaurants.

This uses a test-driven approach with both unit tests using [RSpec](http://rspec.info) and
feature tests using [Capybara](https://github.com/jnicklas/capybara). The aim is to create a
[Ruby on Rails](http://rubyonrails.org) web application.

Both [ActiveRecord](http://guides.rubyonrails.org/active_record_querying.html) and PostgreSQL(http://www.postgresql.org) were used.

## Installation

Clone the repository and then change into the directory:
```
$ git clone git@github.com:Andrew47/yelp_clone_challenge.git
$ cd yelp_clone_challenge
```
Then run `bundle` to install required dependencies.

## Usage

Run the following to start up the server: `$ bin/rails server`. Then click on
the following link: [http://localhost:3000](http://localhost:3000).

The user can choose to sign in with Facebook. Only having signed in can restaurants
be added, reviewed or deleted. A user can only delete their own reviews and restaurants.
