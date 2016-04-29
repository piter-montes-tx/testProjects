Feature: sign in or Create account feature, describes account creation process and its later use.

  Background: Bring side menu up
    Given I click on the hamburguer button

  Scenario: Create Account
    Given I tap on the "Sign in or create account" option
      And I tap on "Create your account" button
     When I fill in email Address field with "redridehell+2@gmail.com"
      And I fill in Password field with "whateverMyPasswdIs"
      And I click "Create your account" button
     Then I should see "Check your inbox for an email. Use the provided link to activate your account." Message Popup
      And I should be able to press "OK" button

  Scenario: Sign In
    Given I tap on the "Sign in or create account" option
      And I fill in email Address field with "redridehell+1@gmail.com"
      And I fill in Password field with "zaq@#$123"
     When I Click Sign in button
     Then I should be logged to the Search Activity
      And I should see "redridehell+1@gmail.com" email account

  Scenario: failed Sign In
    Given I tap on the "Sign in or create account" option
      And I fill in email Address field with "redridehell+1@gmail.com"
      And I fill in Password field with "zaq@#$1"
     When I Click Sign in button
     Then I should see error message popup
      And I should click "OK" button

  Scenario: Sign Out
    Given I am Signed in
      And I tap on the "redridehell+1@gmail.com" option
     When I tap on "Sign out"
     Then I should see "Sign in or create account"

  Scenario Outline: Fill in All about you info
    Given I am Signed in
      And I tap on the "redridehell+1@gmail.com" option
     When I fill in firstname with "firstName"
      And I fill in lastname with "lastName"
      And I tap on the back arrow
     Then I should see "Save Changes?" dialog
      And I should be able to tap <option> button
    Examples:
    |option|
    |DELETE CHANGES|
    |SAVE  |

  Scenario: Forgot your password without filling email address
    Given I tap on the "Sign in or create account" option
      And I tap on the "redridehell+1@gmail.com" option
      And I tap on "forgot your password?" url link
     When I tap on the "reset Password" button
     Then I sould see "Please fill in a valid email address" error message
      And I should remain in the "Reset password" view

  Scenario: Forgot your password with invalid email
    Given I tap on the "Sign in or create account" option
    And I am in the "Reset password" view
    When When I fill in email field with "invalid@email.com" email
    And I tap on the "reset Password" button
    Then I Should see "Unable to reset password" error popup
    And should be able to tap on "OK" button

  Scenario: Sign in using facebook with incorrect booking passwd
    Given I tap on the "Sign in or create account" option
     When I tap on "Sign in with Facebook" button
      And I fill in password field with "noCorrectPasswd"
      And I tap on "connect" button
     Then I should see "Oops! Sign in failed" error popup
      And I should tap on "OK" button