Feature: Playing against computer
  In order to play against computer
  As a player
  I need to make choices

  Scenario: making first choice
    Given I am on the play_computer page
    When I enter "1" in "Make your choice"
    Then I see "cross" on the board
