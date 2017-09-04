Feature: PUT information

@put_info
Scenario: PUT information successfully
  Given I use PUT to update a client on its endpoint
  Then the client is successfully updated
