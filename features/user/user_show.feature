Feature: See user's profile
  A user should be able to see another user's profile, containing their posted tweets

  Background:
    Given there is a registered user
    Given I visit the homepage
    When I click on "People"

  Scenario: Successfully see user's profile
    When I click on that user's name on the list of people
    Then I should see that user's profile

  Scenario: Successfully see user's profile with posted tweets
    Given that user has posted tweets
    When I click on that user's name on the list of people
    Then I should see that user's profile
    And it should contain posted tweets