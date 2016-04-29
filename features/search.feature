Feature: booking.com App first feature

  the next scenarios correspond to the main page or activity of the booking.com application
#@wip
Scenario: search Close to USA
  Given I Open Booking.com search screen
   When I tap on the "current location" input field
    And I fill in enter destination input with "Little Havana"
    And I click on Vamos alla
   Then I should see "Little Havana Caffe & Apartments" in the result list

  Scenario Outline: Verify that modification done in More Option are apply in the search.
    Given I Open Booking.com search screen
    When I tap on the "current location" input field
    And I fill in enter destination input with "Little Havana"
    And I click on Vamos alla
    And I choice room on "<Room>" from More options
    And I choice adults on "<Adults>" from More options
    And I choice children on "<Children>" from More options
    Then I should see "Little Havana Caffe & Apartments" with "Room" and "Adults" "Children" choice previously
  Examples:
    | Room | Adults | Children |
    |2     |3       |1         |
    |3     |4       |2         |

  Scenario Outline: Verify that modification done in Travelling are apply in the search.
      Given I Open Booking.com search screen
      When I tap on the "current location" input field
      And I fill in enter destination input with "Little Havana"
      And I click on Vamos alla
      And I choice "<Travelling>" from Main menu
      Then I should see "Little Havana Caffe & Apartments" with Travelling option choice previously
  Examples:
    | Travelling |
    |Business    |
    |Leisure     |
