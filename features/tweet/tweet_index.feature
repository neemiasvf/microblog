Feature: See posted tweets
  A user should be able to see posted tweets

  Background:
    Given I am already registered

  Scenario: Redirect to "My Tweets" when signed in
    Given I am signed in
    When I try to access the index for tweets
    Then I should be on the page "My Tweets"

  Scenario: Redirect to homepage when not signed in
    When I try to access the index for tweets
    Then I should be at the homepage