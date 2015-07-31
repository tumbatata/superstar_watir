# Author: Thais Silva
# Story: N/A
# Date Created: 07/05/2015

Feature: As a Super Stars user, I would like to have a successfull login with valid user.

  Scenario: Verify login with valid user
    Given I visit the website as a guest user
    And I see the login button
    When I insert my credentials with email and password

  Scenario: Verify login with invalid user
    Given I visit the website as a guest user
    And I see the login button
    When I insert my credentials with invalid email and password




