Feature: GET information

@get_info
Scenario: GET information successfully
  Given I use GET command on client endpoint
  Then I should receive all existing clients
