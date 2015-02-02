Feature: Manage Users
  In order manage user details
  As a security enthusiast
  I want to edit user profiles only when authorized

  Scenario: Show edit link as admin
    Given the following user records
      | username | password | admin |
      | bob      | secret   | false |
      | admin    | secret   | true  |
    And I am logged in as "admin" with password "secret"
    When I visit profile for "bob"
    Then I should see "Edit Profile"