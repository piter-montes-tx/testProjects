Feature: sign in or Create account feature, describes account creation process and its later use.

  Background: Bring side menu up
    Given I click on the hamburguer button
      And I tap on the "Sign in or create account" option

  Scenario: Create Account
    Given I tap on "Create your account" button
     When I fill in email Address field with "redridehell+2@gmail.com"
      And I fill in Password field with "whateverMyPasswdIs"
      And I click "Create your account" button
     Then I should see "Check your inbox for an email. Use the provided link to activate your account." Message Popup
      And I should be able to press "OK" button

  Scenario: Sign In
    Given I fill in email Address field with "redridehell+1@gmail.com"
      And I fill in Password field with "zaq@#$123"
     When I Click Sign in button
     Then I should be logged to the Search Activity
      And I should see "redridehell+1@gmail.com" email account

  Scenario: failed Sign In
    Given I fill in email Address field with "redridehell+1@gmail.com"
      And I fill in Password field with "zaq@#$1"
     When I Click Sign in button
     Then I should see error message popup
      And I should click "OK" button