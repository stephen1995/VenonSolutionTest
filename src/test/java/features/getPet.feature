@GET
Feature: Get Pet

  Background: 
    * url "https://petstore.swagger.io/v2/"
    * def response = call read("postPet.feature")

  Scenario: Add a pet
    Given path "pet/"+response.id
    When method GET
    Then status 200
    And print response
    * def id = response.id
    And print id