@POST
Feature: ADD PET
  Background: 
    * url "https://petstore.swagger.io/v2/"
    * def petPayload = read("jsonFiles/newPet.json")

  Scenario: Add a pet
    Given path "pet"
    And request petPayload
    And headers { Content-Type : "application/json"}
    When method POST
    Then status 200
    And print response
    * def id = response.id
    And print id
    

   
    
    
