# Lift Tracker

## Technologies Used
  * Ruby
  * Ruby on Rails
  * Heroku

## Planning

### Server Setup

The server side setup also required some work with Heroku, so it could be hosted
online. I had to first make an account with Heroku and then setup the database's
schema before migrating it over to Heroku. I also had to set up the client origin
to my front end applicaiton.

### Scaffolding the database

The database was creating using Ruby on Rails, a simple generate scaffold command
will setup the schema for the database you are trying to create. Once the scaffold
is created, I had to make sure the routes where pointing to the correct place,
the controllers had the right methods, and that the model had the needed
relationships between tables.

### Testing with curl

Curl scripts allow developers to test the back end by making HTTP requests and
returning the respone it gets. I would test wiht curl scripts constantly to make
sure that my server would return the correct response for each request.

## Problems Encountered

The first major issue that I came accross was taht my API calls were not working
with Heroku even though they were workin with my local server. Trying to find the
source of this issue was difficult, which is why I required assistance. This
helped me learn to use heroku logs to see all the data migrated over to heroku
as well as some error messages. The issue ended up being that I did not run my
initial migration with first_name and last_name fields, so all the sign up
requests I was sending were failing.

The next biggest issue I faced was sending lift request data to the server, it kept
returning a 400 bad request response. The issue ended up being in my HTML, the
requests I was sending had the name of the forms as "lifts" when in my server,
they would be reffered to in the singular "lift". This meant that the form field
was given to the server incorrectly.

I faced some other small issues on the server side, but these mostly came down to a
general lack of understanding on the architecture of Rails and some mild confusion
based on the error messages I received.
