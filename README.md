# Rack CRUD example

## About

This small web application is an example how to make a basic CRUD web app using only [Rack gem](https://github.com/rack/rack/). It can be useful if you're trying to understand what is Rack or you're going to implement your own Rack application (such Rails or Sinatra).

Actually it implements only index, show, new, create but it's not difficult to add others.

What's inside:

- No middlewares
- View, Controller and Model are separate layers
- No routes as a sepate layer
- No database. CSV file is used to store data
- Unlimited space for improvements
- Keep in mind that code organization isn't good and there can be problems if you try to add more functionality

## How to start

1. Clone
2. `bundle install`
3. `rackup`
4. Go to `http://localhost:9292`
