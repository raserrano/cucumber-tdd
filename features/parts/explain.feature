@allscenariostag
Feature: Explain feature parts
  Here is where the feature description should go you can writer very long
  description usually just trying to follow the ruler max size.
  '''
  More information can be added in blocks or comments
  A class representation can be useful in certain cases
  '''

  @class
  Scenario: I want to create a class
    Given I want to learn how to add a class
    When I create a class
    Then I can see its type and attributes

  @instance
  Scenario Outline:
    Given I have a class user
    When I create an instance with <values>
    Then I should see those attributes
    Examples:
      | values      |
      | user,pass   |
      | user1,pass1 |

    @invalid
    Examples:
      | values      |
      | user,pass   |
      | user1,pass1 |
