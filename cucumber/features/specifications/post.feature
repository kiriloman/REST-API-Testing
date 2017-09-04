Feature: POST information

@post_info
Scenario: POST information successfully
  Given I use POST to send correct information to client endpoint
  Then a new client is successfully created
