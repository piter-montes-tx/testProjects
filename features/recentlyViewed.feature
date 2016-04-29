Feature: booking.com App Recent Viewed Menu

  Scenario: View Recently viewed option
    Given I bring side menu up
    Then I should be able to see "Recent searches" option

  Scenario: Be Able to see recently viewed view
    Given I bring side menu up
    When I tap on the "Recently viewed" option
    Then I should see a "Recently viewed" view

  Scenario Outline: Given a  search made view it on recent viewed list
    Given I made a search for "<searchName>"
    And I bring side menu up
    And I tap on the "Recently viewed" option
    Then I should see a "Recently viewed" view
    And I should see "<searchName>" item
    Examples:
      |searchName            |
      |Gran Hotel Cochabamba |