Feature: Guessing an animal in the first game
  As an Animal Quiz Player
  I'd like the game to guess the animal I'm thinking of
  So that I can entertain myself for a while

  Background:

    Given I play the game for the first time
     When I'm asked if I think of "a kitten"

  Scenario: Player loses

     When I confirm
     Then the game wins

  Scenario: Player wins

     When I decline
     Then I win


