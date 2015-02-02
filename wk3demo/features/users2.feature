Feature: Manage Users
  In order manage user details
  As a security enthusiast
  I want to edit user profiles only when authorized

  Background:
    Given the following user records
    | username   | password | admin |
    | bob        | secret   | false |
    | admin      | secret   | true  |

  Scenario: Show edit link as admin
    Given I am logged in as "admin" with password "secret"
    When I visit profile for "bob"
    Then I should see "Edit Profile"

  Scenario: Hide edit link as guest
    When I visit profile for "bob"
    Then I should not see "Edit Profile"

  Scenario: Show edit link as owner		
    Given I am logged in as "bob" with password "secret"
    When I visit profile for "bob"
    Then I should see "Edit Profile"