# Author: raserrano
Feature: User can add coin
  A user wants to add a coin that has the following attributes
  - Name: string value, common name eg. dime, quarter
  - Value: the numeric representation of the unit, eg, 1, 2, 5, 10
  - Currency: associated currency eg. Dollar, Pound
  - Year: mint year, usually visible in the observe
  - Country
  - Metal: Set of percentages of metals, eg. 80% silver 20% copper

  Scenario: User add coin with basic attributes
    Given basic attributes of coin are added
    When the coin is going to be saved
    Then coin has been stored

  Scenario: User add coin with extra attributes
    Given basic attributes of coin are added
    When the coin is going to be saved
    Then coin has been stored

  Scenario: User cannot add coin if required attribute is missing
    Given basic attributes of coin are added
    When the coin is going to be saved
    Then coin has been stored

  Scenario: User cannot add coin if required attribute is empty
    Given basic attributes of coin are added
    When the coin is going to be saved
    Then coin has been stored

Scenario: User cannot add coin without attributes
    Given basic attributes of coin are added
    When the coin is going to be saved
    Then coin has been stored
