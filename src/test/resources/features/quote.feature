#Exercise for Quote app
#Epic: https://jira.portnov.com/browse/ACA-673
#Author: Dmytro Vereshchak
@quote
Feature: Quote Page Scenarios
  Background:
    Given I open url "https://skryabin.com/market/quote.html"
    Then I should see page title as "Get a Quote"

@quote1
  Scenario: Validate responsive UI behaviour
    When I resize window to 1920 and 1080
    Then element with xpath "//*[@id='location']" should be displayed
    #Change screen resolution to iPhone 12 Pro
    When I resize window to 390 and 844
    Then I wait for 3 sec
    But element with xpath "//*[@id='location']" should not be displayed

  @quote2
  Scenario: Validate minimal "Username" field length requirement as 2 characters
    When I type "q" into element with xpath "//*[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    Then element with xpath "//label[@id='username-error']" should have text as "Please enter at least 2 characters."
    Then I wait for 3 sec
    Then I clear element with xpath "//input[@name='username']"
    Then I wait for 3 sec
    When I type "AA" into element with xpath "//input[@name='username']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should not be displayed

    @quote3
      #Because a valid email address consists of an email prefix and an email domain, both in acceptable formats.
      #The prefix appears to the left of the @ symbol. The domain appears to the right of the @ symbol.
      #So both options should be checked.
    Scenario: Validate that email field accepts only valid email addresses
      When I type "dima.gmail.com" into element with xpath "//input[@ng-model='formData.email']"
      Then I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='email-error']" should be displayed
      Then element with xpath "//label[@id='email-error']" should have text as "Please enter a valid email address."
      Then I wait for 2 sec
      Then I clear element with xpath "//input[@ng-model='formData.email']"
      Then I wait for 2 sec
      When I type "dima@.com" into element with xpath "//input[@ng-model='formData.email']"
      Then element with xpath "//label[@id='email-error']" should be displayed
      Then element with xpath "//label[@id='email-error']" should have text as "Please enter a valid email address."
      Then I wait for 2 sec
      Then I clear element with xpath "//input[@ng-model='formData.email']"
      Then I wait for 2 sec
      When I type "dima@gmail.com" into element with xpath "//input[@ng-model='formData.email']"
      Then element with xpath "//label[@id='email-error']" should not be displayed
      
    @quote4
    Scenario: Validate “Password” set of fields and Confirm Password is disabled if Password field is empty.
      When I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='password-error']" should be present
      And element with xpath "//input[@id='confirmPassword']" should be disabled
      When I type "1" into element with xpath "//input[@id='password']"
      Then element with xpath "//label[@id='password-error']" should be displayed
      And element with xpath "//input[@id='confirmPassword']" should be enabled
      Then I type "2345" into element with xpath "//input[@id='password']"
      And element with xpath "//label[@id='password-error']" should not be displayed
      Then I wait for 3 sec
      Then I click on element with xpath "//button[@id='formSubmit']"
      Then I wait for 3 sec
      And element with xpath "//*[@id='confirmPassword-error'][text()='This field is required.']" should be displayed
      Then I type "1" into element with xpath "//input[@id='confirmPassword']"
      And element with xpath "//*[@id='confirmPassword-error'][text()='Please enter at least 5 characters.']" should be displayed
      Then I type "1234" into element with xpath "//input[@id='confirmPassword']"
      And element with xpath "//*[@id='confirmPassword-error'][text()='Passwords do not match!']" should be displayed
      Then I clear element with xpath "//input[@id='confirmPassword']"
      Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
      Then I wait for 2 sec
      And element with xpath "//*[@id='confirmPassword-error'][text()='Passwords do not match!']" should not be present

    @quote5
      Scenario: Validate “Name” field behavior Modal dialog and Name concatenation
      When I click on element with xpath "//input[@id='name']"
      Then element with xpath "//*[@role='dialog'][@aria-describedby='nameDialog']" should be displayed
      Then I wait for 2 sec
      Then I type "Dmytro" into element with xpath "//input[@id='firstName']"
      Then I type "P" into element with xpath "//input[@id='middleName']"
      Then I type "Vereshchak" into element with xpath "//input[@id='lastName']"
      Then I click on element with xpath "//*[@type='button']/span[text()='Save']"
      Then I wait for 2 sec
      And element with xpath "//input[@id='name']" should have attribute "value" as "Dmytro P Vereshchak"

    @quote6
    Scenario: Validate that Accepting Privacy Policy is required to submit the form, then check the field
      When I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be displayed
      Then I wait for 2 sec
      Then I click on element with xpath "//*[@name='agreedToPrivacyPolicy']"
      Then I wait for 2 sec
      And element with xpath "//*[@id='agreedToPrivacyPolicy-error']" should not be displayed

    @quote7
    Scenario: Fill non-required fields
      When I click on element with xpath "//*[@name='phone']"
      Then I type "+12223334445" into element with xpath "//*[@name='phone']"
      Then I click on element with xpath "//*[@name='countryOfOrigin']/option[text()='Ukraine']"
      Then I click on element with xpath "//input[@name='gender'][@value='male']"
      Then I click on element with xpath "//*[@name='allowedToContact']"
      Then I type "1 Green St" into element with xpath "//textarea[@id='address']"
      Then I click on element with xpath "//option[contains(text(),'Toyota')]"
      Then I click on element with xpath "//button[@id='thirdPartyButton']"
      Then I accept alert
      Then I click on element with xpath "//input[@id='dateOfBirth']"
      And element with xpath "//*[@id='ui-datepicker-div']" should be displayed
      Then I click on element with xpath "//*[@data-handler='selectMonth']/*[text()='Jan']"
      Then I click on element with xpath "//*[@data-handler='selectYear']/*[text()='1988']"
      Then I click on element with xpath "//a[contains(text(),'27')]"
      Then I wait for 5 sec

    @quote8
    Scenario: Submit the form and verify the data. Validate entered fields values are present and password is not displayed
      When I click on element with xpath "//input[@id='name']"
      Then element with xpath "//*[@role='dialog'][@aria-describedby='nameDialog']" should be displayed
      Then I wait for 2 sec
      Then I type "Dmytro" into element with xpath "//input[@id='firstName']"
      Then I type "P" into element with xpath "//input[@id='middleName']"
      Then I type "Vereshchak" into element with xpath "//input[@id='lastName']"
      Then I click on element with xpath "//*[@type='button']/span[text()='Save']"
      Then I wait for 2 sec
      And element with xpath "//input[@id='name']" should have attribute "value" as "Dmytro P Vereshchak"
      Then I type "Dima" into element with xpath "//input[@name='username']"
      Then I type "dima@gmail.com" into element with xpath "//input[@ng-model='formData.email']"
      Then I type "12345" into element with xpath "//input[@id='password']"
      And I wait for element with xpath "//input[@id='password'][@type='password']" to be present
      Then I type "12345" into element with xpath "//input[@id='confirmPassword']"
      And I wait for element with xpath "//input[@id='confirmPassword'][@type='password']" to be present
      Then I click on element with xpath "//*[@name='agreedToPrivacyPolicy']"
      Then I click on element with xpath "//button[@id='formSubmit']"
      Then I wait for 2 sec
      And I wait for element with xpath "//div[@id='quotePageResult']" to be present
      Then element with xpath "//b[@name='firstName']" should have text as "Dmytro"
      Then element with xpath "//b[@name='lastName']" should have text as "Vereshchak"
      Then element with xpath "//b[@name='middleName']" should have text as "P"
      Then element with xpath "//b[@name='name']" should have text as "Dmytro P Vereshchak"
      Then element with xpath "//b[@name='username']" should have text as "Dima"
      Then element with xpath "//b[@name='email']" should have text as "dima@gmail.com"
      Then element with xpath "//b[@name='password']" should have text as "[entered]"
      Then element with xpath "//b[@name='agreedToPrivacyPolicy']" should have text as "true"





      


