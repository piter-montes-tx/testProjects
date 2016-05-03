Feature this review the account details of a account created and signed in
  #required a account already created
  #use el before and after to login and logout

#  Background: Already signed
#    Given I am Signed in with "redridehell+1@gmail.com"
#

#  Background: Sign Out
#    Given I click on the hamburguer button
#    And I tap on the "redridehell+1@gmail.com" option


  Scenario: Verify that All About you fields are displayed on Account details page
    Given I go to Account details page
    Then I should see "First Name" field on all about section
    And I should see "Last Name" field on all about section
