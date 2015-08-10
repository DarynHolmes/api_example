# Week 3
###### JSON, connect to simple APIs, RottenTomatoes API, DeckOfCards API, HTTP methods (200,300,400,500)

Examples - books, teams
The class can implement books

## Bundler

![Image of Bundler](http://bundler.io/images/bundler-small.png)

Website: http://bundler.io/

Purpose
* Used to manage Gems (libraries) and thier dependencies
* Used to create your own Gems
  * creates an empty project with the correct folder structure, config e.t.c. 

Files
* Gemfile contains the required gems
  * Example: https://gist.github.com/boriscy/827469 
* Gemlock is a generated file that contains the exact versions that were last installed
* The Gemlock file us updated when you do a: ```bundle update```

Key commands:
* ```bundle install```
* ```bundle update```

## API

The term API stands for Application Programming Interface. It can mean the interface to a library (gem) or a webservice API - also known as an HTTP API. A webservice is used to share data over a network. 

An API for managing teams could look like this:
* http://example.com/view_teams
* http://example.com/create_new_team?name=Runners
* http://example.com/update_team?id=10&name=Sue
* http://example.com/delete_team?id=10

While you can design your own API, with your own end points (URIs), it is good practice to follow an architectural style known as REST - representational state transfer. This is a standard way of naming URIs.

### REST

Representational State Transfer (REST) was introduced by Roy Fielding to describe a standard way of creating HTTP APIs. He mapped the main HTTP verbs (view, create, edit, and delete) onto common actions e.g. GET, POST, PUT, DELETE.

#### HTTP methods
These are called HTTP verbs

Commonly used verbs:
* GET
* POST
* PUT
* DELETE

Uses:
* GET - read
* POST - create
* PUT - update
* DELETE - delete \ destroy

In REST there is the notion of a resource. In the example below, a 'team' is a resource. The resource is always in the plural form.

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

##### Nested Resources

If we want to know all the members in a team, we can use:

GET /teams/100/members

To add a new member:

POST /teams/100/members

Data:

    name = Smith 

It is typically not needed or advised to go more than two levels deep. It is good practice to keep the URIs as shallow as possible.

Note: Be pragmatic about this, don't force this this style onto each endpoint

### Document formats

* Plain text
* CSV (comma separated value)
* XML
* JSON

Most commonly used response formats are XML and JSON

JSON example
```
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
```


### HTTP Status Codes

When you make an HTTP request, the server will respond with a code which corresponds to whether or not the request was successful and how the client should proceed. There are four different levels of codes:

* 2xx = Success
* 3xx = Redirect
* 4xx = User error
* 5xx = Server error

Success codes:

* 200 - OK (the default)
* 201 - Created
* 202 - Accepted (often used for delete requests)

User error codes:

* 400 - Bad Request (generic user error/bad data)
* 401 - Unauthorized (this area requires you to log in)
* 404 - Not Found (bad URL)
* 405 - Method Not Allowed (wrong HTTP method)
* 409 - Conflict (i.e. trying to create the same resource with a PUT request)


#### Time to code....


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
* This will be good practice for general ruby skills
* https://github.com/TIY-Rails-1507/week-02-homework

