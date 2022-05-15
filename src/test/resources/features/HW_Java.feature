@java
  Feature: Java homework

    @java1
    Scenario: Converter
    Given I convert 1 foot to centimeters
    And I convert 1 US gallon to liters
      And I convert 0 Celsius to Fahrenheit

    @java2
    Scenario: Use if/else statements
      Given I check if number “12” is odd or even
      Then  I check if number “11” is odd or even

    @java3
    Scenario: Check Grades
      Given  I got 89 percent on my test

    @java4
    Scenario: Calculating cost of fruit
      Given I want to know cost of 4 pounds of "grapefruits"

    @java5
    Scenario: Print days of the week
      Given I print days

