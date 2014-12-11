Feature: Starting the game
  In order to play noughts and crosses
  As a player
  I want to start a game

  Scenario: Choosing to play against the computer
    Given I am on the homepage
    When I click on "Play against computer"
    Then I go to play_computer page
    And I see "Welcome, lets play noughts and crosses!!!"

  Scenario: Choosing to play against other players
    Given I am on the homepage
    When I click on "Play against other players"
    Then I go to play_players page
    And I see "Waiting for oponents to join the game!!!"