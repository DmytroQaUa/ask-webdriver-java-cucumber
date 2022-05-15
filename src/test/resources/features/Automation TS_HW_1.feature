#Automation TS_HW_1
#Epic: https://jira.portnov.com/browse/ACA-725
#Author: Dmytro Vereshchak
@Assesment_control_1
Feature: ACA Scenarios
  Background:
    Given I open url "http://ask-internship.portnov.com/#/login"
    Then I type "dima.vereschak@gmail.com" into element with xpath "//input[@id='mat-input-0']"
    Then I type "12345" into element with xpath "//input[@id='mat-input-1']"
    Then I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I should see page title as "Assessment Control @ Portnov"

@ACA1
Scenario: User can create a quiz with valid data
  Then I wait for 3 sec
  When I click on element with xpath "//*[@class='mat-primary mat-list-item ng-star-inserted']//h5[contains(text(),'Quizzes')]"
  Then I wait for 3 sec
  Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be displayed
  Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
  Then I type "_Internship Quiz" into element with xpath "//*[@formcontrolname='name']"
  And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
  Then I click on element with xpath "//*[@id='mat-radio-3']"
  Then I type "1+1 = " into element with xpath "//*[@formcontrolname='question']"
  Then I type "2" into element with xpath "//textarea[@id='mat-input-4'][@formcontrolname='option']"
  Then I type "3" into element with xpath "//textarea[@id='mat-input-5'][@formcontrolname='option']"
  Then I click on element with xpath "//label[@class='mat-radio-label'][@for='mat-radio-6-input']"
  Then I click on element with xpath "//span[contains(text(),'Save')]"

  @ACA2
  Scenario: Verify that max 15 options per question
    Then I wait for 3 sec
    When I click on element with xpath "//*[@class='mat-primary mat-list-item ng-star-inserted']//h5[contains(text(),'Quizzes')]"
    Then I wait for 3 sec
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be displayed
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    Then I type "_Internship Quiz" into element with xpath "//*[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    Then I click on element with xpath "//*[@id='mat-radio-3']"
    Then I type "1+1 = " into element with xpath "//*[@formcontrolname='question']"
    Then I type "2" into element with xpath "//textarea[@id='mat-input-4'][@formcontrolname='option']"
    Then I type "3" into element with xpath "//textarea[@id='mat-input-5'][@formcontrolname='option']"
    Then I click on element with xpath "//label[@class='mat-radio-label'][@for='mat-radio-6-input']"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I click on element with xpath "//span[contains(text(),'Add Option')]"
    Then I wait for 3 sec


