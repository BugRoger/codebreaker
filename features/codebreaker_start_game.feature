Feature: codebreaker starts game
  
  As a code-breaker
  I want to start a game
  So that I can break the code

    Scenario: start game
     Given I am not yet playing
     When I start a new game
     Then I should see "Welcome to Codebreaker!"
     And I should see "Enter guess:"

    @javascript
    Scenario: Selenium Test
      Given I am not yet playing
      When I start a new game
      Then I should be able to visit Google

