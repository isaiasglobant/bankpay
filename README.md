# [Grape](https://github.com/intridea/grape) REST API

## What is this?

* Grape is micro-framework for creating REST-like APIs in Ruby.

Together you can create a highly scalable API and use the nice features of Grape to specify how your REST API will work.

## Getting Started

Install dependencies

	bundle install

Next create and migrate your database

	rake db:setup

Finally start the server and you're done!

	bin/foreman start

curl http://127.0.0.1:5000/api/v1

A blank array in response tells us there are no posts yet.

## Requesting a Ride

/ride/create/:rider_id
	
	{
      "latitude": "11.006506",
      "longitude": "-74.830908"
	}
		
curl --location --request POST 'http://127.0.0.1:5000/api/v1/ride/create/2'

## Finishing a Ride
/ride/update/:journey_id

	curl --location --request PATCH 'http://127.0.0.1:5000/api/v1/ride/update/2'

## Running a Test
	rspec spec

# Extras

You can use Rails-like database commands.

### Locally, you can:

Drop your database:

	rake db:drop

Create your database:

	rake db:create

Migrate your database:

	rake db:migrate

Create and migrate your database:

	rake db:setup

# Resources

* [The Grapes of Rapid](http://www.confreaks.com/videos/475-rubyconf2010-the-grapes-of-rapid) - everything you need to know about Grape.
