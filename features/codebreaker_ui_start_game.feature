@wip
Feature: codebreaker starts game
  
  As a code-breaker
  I want to start a game in a browser
  So that I can break the code without having to fuzz around with a command line

    Scenario: start game
     Given I am not yet playing
     When I start a new game
     Then I should see "Welcome to Codebreaker!"
     And I should see "Enter guess:"
     And I should see "Hello World"
