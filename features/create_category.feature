Feature: Create Category
  As a blog administrator
  In order to manage my articles
  I want to be able to add category to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully create category
    When I go to the admin categories page
    Then I should see "Categories"
