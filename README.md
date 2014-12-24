Noughts and Crosses
==================
I used a popular Noughts and Crosses game as an exercise to practice my Ruby, JavaScript and testing skills.
Specification
-------------
Noughts and Crosses is an online version of a popular Noughts and Crosses game with the following functionality: 
* the player is presented with two choices
  a) to play against a computer 
  b) to play against other players
* computer isn't a very strong player as makes its choices at random
* the outcome of the game is announced once there is a winner or if there happened to be a draw

<img src="https://s3-eu-west-1.amazonaws.com/annas-first-test-bucket/noughts_and_crosses.png">

To Do
------
* make computer smart (i.e implement the logic which analises the game at any given stage)
* implement the game for 2 players

Languages and Tools
-------------------
* Ruby
* Sinatra
* RSpec
* Cucumber
* Capybara
* JavaScript
* jQuery
* JSON
* HTML
* CSS

How to use
----------
Clone the repository:
```
$ git clone https://github.com/annaschechter/noughts-and-crosses.git
```
Install the gems:
```
$ bundle install
```
Run RSpec to see the unit tests:
```
$ rspec
```
Run Cucumber to see the feature tests:
```
$ cucumber
```
Rackup:
```
$ rackup
```
In your browser visit http://localhost:9292/ to play!