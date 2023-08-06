# Rack CRUD example

## About

This small web application serves as an example of how to create a basic CRUD web app using only the [Rack gem](https://github.com/rack/rack/). It's particularly helpful if you're looking to understand Rack or if you intend to implement your own Rack application, like Rails or Sinatra.

Currently, it implements only the index, show, new, and create functionalities, but adding others isn't challenging.

Features:

- No middleware
- Separate layers for View, Controller, and Model
- No separate layer for routes
- No database: A CSV file stores the data
- Ample room for improvements
- Note that the code organization is suboptimal, which may pose challenges when trying to incorporate additional features.

You can see the app in action [here](https://github.com/evmorov/rack-crud-example/blob/master/rack-crud-example.gif).

## How to start

1. Clone
2. `bundle install`
3. `rackup`
4. Go to `http://localhost:9292`
