Feature: Write Articles
  As a blog administrator
  In order to manage my articles 
  I want to be able to merge articles together

  Background:
    Given the blog is set up
    Given the following articles exist:
      |id     |title    |body         |
      | 2     |Foobar   |Lorem ipsum  |
      | 3     |Foobar2  |Lorem ipsum 2|
    And I am logged into the admin panel

 Scenario: Successfully merge articles
    Given I am on the article page for "Foobar"
    And I fill in "merge_with" with "3"
    And I press "Merge"
    Then The article "Foobar" should have body "Lorem ipsum Lorem ipsum 2"
    
