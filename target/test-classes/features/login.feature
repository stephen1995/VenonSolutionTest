@login
	Feature: ADD PET
    Background: 
    * url "http://staging-api.myollie.com/api/v3/"
    * def loginPayload = read("jsonFiles/login.json")
  Scenario: Login to Ollie Pets
    Given path "auth/cxlogin/"
    And request loginPayload
    When method POST
    Then status 200
    * def access_token = response.access_token

    