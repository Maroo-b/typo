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
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I fill in "category_description" with "Lorem Ipsum"
    And I press "Save"
    Then I should be on the admin categories page