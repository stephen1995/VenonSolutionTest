@PUT
Feature: ADD PET
  Background: 
    * url "https://petstore.swagger.io/v2/"
    * def getPetResponse = call read("getPet.feature")
    * def id = getPetResponse.id

  Scenario: Add a pet
    Given path "pet"
    And request {"id":"#(id)","category":{"id":0,"name":"nameUpdated"},"name":"doggie","photoUrls":["string"],"tags":[{"id":0,"name":"string"}],"status":"sold"}
    And headers { Content-Type: "application/json"}
    When method PUT
    Then status 200
    And print response

    

    

   
    
    
