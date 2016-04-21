Feature: booking.com App first feature

  the next scenarios correspond to the main page or activity of the booking.com application

Scenario: search Close to Cochabamba
  Given I Open Booking.com search screen
   When I tap on the "current locations" input field
    And I fill in enter destination input with "Cochabamba"
    And I click on Vamos alla
   Then I should see "Apartment Juan Daniel II" in the result list


#working on scenario