Feature: booking.com App first feature

  the next scenarios correspond to the main page or activity of the booking.com application
#@wip
Scenario: search Close to USA
  Given I Open Booking.com search screen
   When I tap on the "current location" input field
    And I fill in enter destination input with "Little Havana"
    And I click on Vamos alla
   Then I should see "Little Havana Caffe & Apartments" in the result list