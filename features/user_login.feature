Feature: User login
  As a user
  In order to acess my account
  I want to be able to login

  Given following user exists
    | name    | email             | password |
    | David   | david@test.com    | password |

  Scenario:
    Given I am on the landing-page
    And I click "Login"
    When I fill in "Email" with "david@test.com"
    And I fill in "Password" with "password"
    And I click "Log in" button
    Given I am logged in as "David"
    Then I should be redirected to "landing-page"
    And I should see "Hello, David"
