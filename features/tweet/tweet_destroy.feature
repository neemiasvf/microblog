Feature: Delete Posted Tweet
  A signed in user should be able to delete a posted tweet

  Background:
    Given I am already registered
    Given I am signed in
    Given I previously posted a tweet
    Given I visit the homepage
    Given the posted tweet should be visible

  Scenario: Successfully delete a posted tweet
    When I click on "Delete this tweet"
    Then I should see "Tweet was successfully deleted."
    And there should be no tweets from that user

  Scenario: Trying to delete a tweet from another user
    When I try to delete a tweet that does not belong to me
    Then I should see "Sorry. You can only delete tweets that were posted by you."
    And that tweet should still be posted