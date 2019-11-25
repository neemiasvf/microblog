Feature: Post a new tweet
  A signed in user should be able to post a new tweet

  Background:
    Given I am already registered
    Given I am signed in
    When I click on "Tweet"

  Scenario: Successfully post a new tweet
    When I fill the field "What's on your mind?" with the value "This is a tweet."
    And I click on "Tweet" within "new_tweet"
    Then I should see "Tweet successfully posted."
    And I should be on the page "My Tweets"
    And the posted tweet should be visible

  Scenario: Tweet can't be blank
    When I fill the field "What's on your mind?" with the value ""
    And I click on "Tweet" within "new_tweet"
    Then I should see "can't be blank"