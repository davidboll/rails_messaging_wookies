Feature: Compose & send message
  As a user
  In order to send a message
  I want to be able to create a message

  Background:
    Given following user exist
      | name    | email             | password |
      | David   | david@test.com    | password |
      | Aiden   | aiden@test.com    | password |


  Scenario:
    Given I am logged in
    When I click "Inbox" link
    Then I am redirected to "Inbox" page
    When I click "Compose" button
    And I choose "Fleur" as a "Recipient"
    And I fill in "Subject" with "Hi there!"
    And I fill in "Message" with "Long time! Whats up?"

    Then show me the page
    And I should see "Hello, David"
