Feature: View main page
  As a gamer
  So that I can learn about updates to the game, be introduced to it, and have a place to get to other places
  I want to be able to view the home page

Background: homepage has been added
  Given I am on the Warlocks Remake homepage

Scenario: View main page
  Then I should see "HELLO WORLD"
  And I should see "Login"
  And I should see "Games"
