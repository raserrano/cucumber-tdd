# Author: raserrano
Feature: User can add coin

  Scenario: User add coin with basic attributes
    Given basic attributes of coin are added
    When the coin is going to be saved
    Then coin has been stored
