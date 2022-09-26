@GETStatus
Feature: Get Pet

  Background: 
    * url "https://petstore.swagger.io/v2/"

  Scenario: Add a pet
    Given path "pet/findByStatus"
    When method GET
    Then status 200
    And print response
    * def id = response.id
    And print id