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
   # When I click "Inbox" link
   When I click "Compose" button
   And I choose "Aiden" as a "Recipient"
   And I fill in "Subject" with "Hi"
   And I fill in "Message" with "Fun Text"
   And I click "Send Message"
   Then I sees "Your message was successfully sent!"
