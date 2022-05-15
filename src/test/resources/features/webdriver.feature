#Exercize for Webdriver experience
# Author: Dmytro Vereshchak

  @webdriver
  Feature: Exercise for Webdriver experience
    Background:
      Given I navigate "quote"
    @webdriver1
    Scenario: Open URL using site name
      #Given I navigate "quote"
      And I Print page details

    @webdriver1
      Scenario: Email field verification
       When I type "abc" into email field
      And I click Submit button
      Then error message "Please enter a valid email address." should be displayed
      And I wait for 2 sec

    @Webdriver2
    Scenario: Full name validation
      Then I click on Name field
      Then I open diolog window
      Then I type "A" as First Name
      Then I type "A" as Middle Name
      Then I type "A" as Last Name
      Then I click Save button
      Then I validate Full name is "A A A"