Feature: Playing against computer
  In order to play against computer
  As a player
  I need to make choices

  Scenario: making first choice
    Given I am on the play_computer page
    When I enter "1" in "Make your choice"
    And I click on "submit"
    Then I should see "cross" on the board

  Scenario: computer makes choice
    Given I am on the play_computer page
    And I made my choice
    Then computer makes its choice
    And I should see "nought" on the board
