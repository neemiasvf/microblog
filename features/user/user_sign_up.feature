Feature: Sign up
  A user should be able to sign up to the website

  Background:
    Given I visit the homepage
    When I click on "Sign up"
    When I fill out the registration form

  Scenario: Successfully sign up
    When I click on "Sign up" within "new_user"
    Then I should see "Welcome! You have signed up successfully."

  Scenario: Full name can't be blank
    When I fill the field "Full name" with the value ""
    When I click on "Sign up" within "new_user"
    Then I should see "Full name can't be blank"

  Scenario: Email can't be blank
    When I fill the field "Email" with the value ""
    When I click on "Sign up" within "new_user"
    Then I should see "Email can't be blank"

  Scenario: Password can't be blank
    When I fill the field "Password" with the value ""
    When I click on "Sign up" within "new_user"
    Then I should see "Password can't be blank"

  Scenario: Password confirmation can't be blank
    When I fill the field "Password confirmation" with the value ""
    When I click on "Sign up" within "new_user"
    Then I should see "Password confirmation doesn't match Password"

  Scenario: Password confirmation doesn't match Password
    When I fill the field "Password confirmation" with the value "123"
    When I click on "Sign up" within "new_user"
    Then I should see "Password confirmation doesn't match Password"