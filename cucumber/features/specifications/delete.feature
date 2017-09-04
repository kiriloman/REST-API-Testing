Feature: DELETE information

@delete_info
Scenario: DELETE information successfully
  Given I use DELETE to remove a client
  Then the client is successfully removed
