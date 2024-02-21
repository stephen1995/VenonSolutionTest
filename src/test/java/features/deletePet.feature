@GETStatus
Feature: Get Pet

  Background: 
    * url "https://petstore3.swagger.io/api/v3"

  Scenario: Add a pet
    Given path "pet/findByStatus"
    When method GET
    Then status 200
    And print response
    * def id = response.id
    And print id