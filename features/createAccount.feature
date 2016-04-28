<<<<<<< Updated upstream
Feature: sign in or Create account feature, describes account creation process and its later use.

  Background: Bring side menu up
    Given I click on the hamburguer button
    And I tap on the "Sign in or create account" option

  Scenario: Create Account
    Given I tap on "Create your account" button
    When I fill in email Address field with "redridehell+2@gmail.com"
    And I finn in Password field with "whateverMyPasswdIs"
    And I click "Create your account" button
    Then I should see "Check your inbox for an email. Use the provided link to activate your account." Message Popup
     And I should be able to press "OK" button
=======
Feature: Create Account

  these scenarios will work in order to create an account for booking.com application

  Scenario: Verify that create account option is displayed on main menu
    Given I Open Booking.com search screen
    When I tap on "Main Menu" option
    Then I should see the "Sign in or create account" item from "Main Menu" menu

  Scenario: Verify that create account button is displayed
    Given I Open Booking.com search screen
    And  I tap on "Main Menu" option
    When I select "Sign in or create account" from "Main Menu" menu
    Then I should to see tbe "

    
>>>>>>> Stashed changes
