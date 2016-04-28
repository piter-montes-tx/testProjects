Feature: booking.com App Recent Searches Menu.
  As a user
  I want to see the recent searched hotels.

  Background:
    Given I Open Booking.com search screen
    When I tap on the "main" icon
    And I tap on "Recent searches" option

  Scenario: User previously searched Little Havana hotel on USA
            with Check-in May 11, Check-out May 24 and years 2016
            and registered a total of Guest 2

    Then I should see "Little Havana" name hotel in the first position in the list
    And I should see the Country name "United States of America"
    And I should see the date "\(14 nights May 13 - May 27, 2016 \)"
    And I should see the guest "2 guests"

  Scenario: User previously searched Italy hotel which was previously changed
     date to Check-in May 11, Check-out May 24 and years 2016, and
     number of guest to 4

    Then I should see the "Litle Havana" hotel name "2" times
    And I should see "Litle Havana" hotel with the last date modified "13 nights  \(May 11 - May 24, 2016\)"
    And I should see "Litle Havana" hotel with the last guests modified "2"

    
