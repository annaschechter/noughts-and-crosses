Feature: Starting the game
  In order to play noughts and crosses
  As a player
  I want to start a game

  Scenario: Clicking link "Play"
    Given I am on the homepage
    When I click on "Play"
    Then I go to play page
    And I see "Welcome, lets play noughts and crosses!!!"