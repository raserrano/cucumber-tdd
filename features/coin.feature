# Author: raserrano
Feature: User can add coin
  A user wants to add a coin that has the following attributes
  - Name: string value, common name eg. dime, quarter
  - Value: the numeric representation of the unit, eg, 1, 2, 5, 10
  - Currency: associated currency eg. Dollar, Pound
  - Year: mint year, usually visible in the observe
  - Country
  - Metal: Set of percentages of metals, eg. 80% silver 20% copper
  Required attributes are: value, country, year and currency.

  Scenario: User add coin with required attributes
    Given required attributes of coin are added
    When the coin is going to be saved
    Then coin has been stored

  Scenario: User add coin with extra attributes
    Given extra attributes of coin are added
    When the coin is going to be saved
    Then coin has been stored

  Scenario: User cannot add coin if required attribute year is missing
    Given required attributes of coin are added
    And attribute 'year' is removed
    When the coin is going to be saved
    Then coin has been stored

  Scenario: User cannot add coin if required attribute country is missing
    Given required attributes of coin are added
    And attribute 'country' is removed
    When the coin is going to be saved
    Then coin has been stored

  Scenario: User cannot add coin if required attribute country is empty
    Given required attributes of coin are added
    And attribute 'country' is set to be ''
    When the coin is going to be saved
    Then coin has been stored

  Scenario: User cannot add coin if required attribute currency is empty
    Given required attributes of coin are added
    And attribute 'currency' is set to be ''
    When the coin is going to be saved
    Then coin has been stored

Scenario: User cannot add coin without attributes
    Given required attributes of coin are added
    And all required attributes are removed
    When the coin is going to be saved
    Then coin has been stored

Scenario: User cannot add coin with empty attributes
    Given required attributes of coin are added
    And all required attributes are set to be ''
    When the coin is going to be saved
    Then coin has been stored
