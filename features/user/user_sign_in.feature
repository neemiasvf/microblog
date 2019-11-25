Feature: Sign in
  A registered user should be able to sign in to the website

  Background:
    Given I am already registered
    Given I visit the homepage
    When I click on "Sign in"
    And I fill out my credentials

  Scenario: Successfully sign in
    When I click on "Sign in" within "new_user"
    Then I should see "Signed in successfully."

  Scenario: Email can't be blank
    When I fill the field "Email" with the value ""
    When I click on "Sign in" within "new_user"
    Then I should see "Invalid Email or password."

  Scenario: Password can't be blank
    When I fill the field "Password" with the value ""
    When I click on "Sign in" within "new_user"
    Then I should see "Invalid Email or password."

  Scenario: Invalid credentials
    When I fill the field "Password" with the value "123"
    When I click on "Sign in" within "new_user"
    Then I should see "Invalid Email or password."