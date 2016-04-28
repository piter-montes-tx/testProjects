Feature: Change Language

  these scenarios will work to the language setting of the booking.com application

  #Quick Menu
  Scenario: Verify that Language option is displayed from Quick Menu list
    Given I Open Booking.com search screen
    When I tap on "Quick Menu" option
    Then I should see "Language" item option is displayed on "Quick Menu" list

  Scenario Outline: Verify that Language option is displayed in Language List from Quick Menu list
    Given I Open Booking.com search screen
    When I tap on "Quick Menu" option
    And I tap on "Language" option from the "Quick Menu" List
    Then I should see "<language>" item option is displayed on the "Language" list
    Examples:
      |language|
      |English |
      |Español |
      |Français|

  Scenario Outline: Verify after choosing Language option the changes were applied from Quick Menu list
    Given I Open Booking.com search screen
    When I tap on "Quick Menu" option
    And I tap on "Language" option from the "Quick Menu" List
    And I tap on "<language>" item option from the "Language" list
    And I tap on "Quick Menu" option
    Then I should see the application language changed to "<idiom>" language title
    And  I tap on "Language" option from the "Quick Menu" lists
    And I tap on "English" item option from the "Language" list
    Examples:
      |language| idiom    |
      |English | Language |
#      |Español | Idioma   |
#      |Français| Langue   |

  #Going Main Menu option
  Scenario: Verify that Language option is displayed on Main Menu list from Main Menu list
    Given I Open Booking.com search screen
    And I click on the hamburguer button
    When I tap on the "Settings" option
    Then I should see "English" item option is displayed on "Settings" screen

  Scenario Outline: Verify that Language option is displayed in Language List from Main Menu list
    Given I Open Booking.com search screen
    And I click on the hamburguer button
    And I tap on the "Settings" option
    When I tap on "Language" option from the "Settings" screen
    Then I should see "<language>" item option is displayed on the "Language" list
    Examples:
      |language|
      |English |
      |Español |
      |Français|

  Scenario Outline: Verify after choosing Language option the changes were applied from Main Menu list
    Given I Open Booking.com search screen
    And I click on the hamburguer button
    And I tap on the "Settings" option
    When I tap on "Language" option from the "Settings" screen
    When I tap on "<language>" item option from the "Language" list
    Then I should see the application language changed to "<idiom>" language title
  Examples:
  |language| idiom    |
  |English | Language |
#  |Español | Idioma   |
#  |Français| Langue   |
