
# Week 3
###### JSON, connect to simple APIs, RottenTomatoes API, DeckOfCards API, HTTP methods (200,300,400,500)



Examples - books, teams
The class can implement books

## Bundler
http://bundler.io/images/bundler-small.png
* Used to manage Gems (libraries) 
* Used to create empty Gems
* Gemfile contains the required gems
* Gemlock is a generated file that contains the exact versions that were last installed
* The Gemlock file us updated when you do a: ```bundle update```
* http://bundler.io/

Key commands:
* ```bundle install```
* ```bundle update```

# api_example

Document formats
Plain text
CSV (comma separated value)
XML
JSON

The term API stands for Application Programming Interface.

However, these days, when people refer to an API they are most likely referring to an HTTP API, which can be a way of sharing application data over the internet. 

For example, let's say we have an application that allows you to view, create, edit, and delete widgets. We could create an HTTP API that allows you to perform these functions:

http://example.com/view_teams
http://example.com/create_new_team?name=Runners
http://example.com/update_team?id=10&name=Sue
http://example.com/delete_team?id=10

A problem has started to arise when everyone starts implementing their own APIs. Without a standard way of naming URLs, you always have to refer to the documentation to understand how the API works. One API might have a URL like /view_widgets whereas another API might use /widgets/all.

REST

REST stands for Representational State Transfer. This is a term invented by Roy Fielding to describe a standard way of creating HTTP APIs. He noticed that the four common actions (view, create, edit, and delete) map directly to HTTP verbs that are already implemented: GET, POST, PUT, DELETE.

HTTP methods
These are called HTTP verbs

Commonly used verbs:
GET
POST
PUT
DELETE

Others:
OPTIONS
HEAD
TRACE
CONNECT
PATCH


Uses
GET - read
POST - create
PUT - update
DELETE - delete \ destroy

In REST there is the notion of a resource. In this example, a 'team' is known as a resource.

In REST, the resource is always in the plural form.

Examples of RESTful URLs

View all
GET http://example.com/teams

To view a single team
GET http://example.com/teams/100

Create
POST http://example.com/widgets
Data:
    name = Foobar


To update a team
PUT http://example.com/teams/100
Data:
    name = New name

To delete a team 

DELETE http://example.com/teams/123


Nested Resources

If we want to know all the members in a team, we can use:

GET /widgets/123/users

To add a new member:

POST /widgets/123/users
Data:
    name = Smith 

It is typically not needed to go more than two levels. It is good practice to keep the URLs as shallow as possible.


HTTP Status Codes

When you make an HTTP request, the server will respond with a code which corresponds to whether or not the request was successful and how the client should proceed. There are four different levels of codes:

2xx = Success
3xx = Redirect
4xx = User error
5xx = Server error

Success codes:

200 - OK (the default)
201 - Created
202 - Accepted (often used for delete requests)
User error codes:

400 - Bad Request (generic user error/bad data)
401 - Unauthorized (this area requires you to log in)
404 - Not Found (bad URL)
405 - Method Not Allowed (wrong HTTP method)
409 - Conflict (i.e. trying to create the same resource with a PUT request)

Response Formats

Most commonly used data formats are XML and JSON

JSON example

[
  {
    id: 100,
    name: 'Liverpool'
  },
  {
    id: 101,
    name: 'New Castle'
  }
]


Time to code!


## Homework

### Expetion Handeling
* This is from Week 2, Monday
* See https://github.com/TIY-Rails-1507/week-02-class#homework_monday
* Focus on the homework section: Exception handling
* This includes excercise 4.1. - https://github.com/TIY-Rails-1507/week-02-class#excercise

### API practice
* Create a console game of Blackjack
* Keep it simple then build on it
* Use: http://deckofcardsapi.com/

### HTML
* Go through the following:
  * http://www.w3schools.com/html/html_intro.asp
  * http://www.w3schools.com/html/html_basic.asp
  * http://www.w3schools.com/html/html_elements.asp

### Rock Paper Scissors - optional
* Good practice
* https://github.com/TIY-Rails-1507/week-02-homework

