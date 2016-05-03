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

  Scenario: Verify that Personal Details fields are displayed on Account details page
    Given I go to Account details page
    And I scroll until "Personal details" section
    Then I should see "Email Address" field on Personal details section
    And I should see "Mobile phone" field on Personal details section
    And I should see "Date of birth" field on Personal details section
    And I should see "Gender" field on Personal details section

  Scenario: Verify that Other Details fields are displayed on Account details page
    Given I go to Account details page
    And I scroll until "Other details" section
    Then I should see "Country" field on Other details section
    And I should see "Address" field on Other details section
    And I should see "Post Code" field on Other details section
    And I should see "City" field on Other details section
    And I should see "Business traveller" field on Other details section
    And I should see "Smoking preferred" field on Other details section
