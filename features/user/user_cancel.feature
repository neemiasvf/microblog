Feature: Cancel account
  A registered user should be able to cancel their account

  Background:
    Given I am already registered
    Given I am signed in

  Scenario: Successfully cancel account with no posted tweets
    When I click on "Account"
    When I click on "Cancel my account"
    Then I should see "Bye! Your account has been successfully cancelled. We hope to see you again soon."
    And there should be no tweets from that user

  Scenario: Successfully cancel account with posted tweets
    When I previously posted a tweet
    When I click on "Account"
    When I click on "Cancel my account"
    Then I should see "Bye! Your account has been successfully cancelled. We hope to see you again soon."
    And there should be no tweets from that user