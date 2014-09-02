Feature: Tries to learn from incorrect guesses
  As an Animal Quiz Player
  I'd like the game to learn from its incorrect guesses
  So that playing the game is more challenging

  # TODO:
  # [ ] Implement the missing steps
  # [ ] Implement the missing functionality
  # [ ] Refactor the scenario to make the steps more focused

  Scenario: Learning for the first time

    # ...
    Given I play the game for the first time
     When I'm asked if I think of "a kitten"
      And I decline

    # ...
     Then I'm asked what animal I was thinking of
      And I answer that it was "a rabbit"

    # ...
     Then I'm asked to provide a question to help the game distinguish between "a rabbit" and "a kitten"
      And I say that the question should be "Is it a small animal"
      And it should be answered "yes"
