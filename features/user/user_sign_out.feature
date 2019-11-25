Feature: Sign out
  A signed in user should be able to sign out from their account

  Scenario: Successfully sign out
    Given I am already registered
    Given I am signed in
    When I click on "Sign out"
    Then I should see "Signed out successfully."