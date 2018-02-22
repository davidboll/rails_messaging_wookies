Feature: User can send a message
 As a User
 In order to send a message
 I should be able to create a message

 Background:
  Given following user exists
    | name    | email             | password |
    | David   | david@test.com    | password |
    | Aiden   | aiden@test.com    | password |

 Scenario:
   Given I am logged in
   Then I am redirected to inbox page
   Then I see "Hello, person"
   Then I click "Inbox" link
   Then I click "Compose" link
   # And I choose "Aiden" as a "Recipient"
   # And I fill in "Subject" with "Hi"
   # Then show me the page
   # And I fill in "Conversation" with "Fun Text"
   And I send a mail to "David"
   Then I see "Your message was successfully sent!"
