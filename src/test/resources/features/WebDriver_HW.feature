#HW for Webdriver experience
#Author: Dmytro Vereshchak
  @HW
  Feature: WebDriver Homework

    Scenario: Validate Email field behavior
      Given I navigate "quote"
      When I type "test%google.com" into email field
      And I click Submit button
      Then error message "Please enter a valid email address." should be displayed
      Then error message should have text as "Please enter a valid email address."
      When I clear email field
      Then error message should have text as "This field is required."
      When I type "test@google.com" into email field
      Then error message "Please enter a valid email address." should not be displayed
      Then I wait for 3 sec


