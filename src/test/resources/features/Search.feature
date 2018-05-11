#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: I want to verify the search functionality of the application

  @Positive
  Scenario: Verify the search functionality with valid keyword
    Given I am at homepage
    When I click on search icon
    And I enter "resorts" keyword in the search textbox
    Then I should see the search results on the search result page
    And I should see the search result count on the top of page

@Negative
  Scenario: Verify the search functionality with invalid keyword
    Given I am at homepage
    When I click on search icon
    And I enter "sdfsdf" keyword in the search textbox
    Then I should see the no results message on the search result page

    