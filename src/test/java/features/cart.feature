@Ra
Feature: OlliePets

  Background: 
    * url "http://staging-api.myollie.com/api/v3/"
    * def loginFeature = call read("login.feature")
    * def token = loginFeature.access_token

  Scenario Outline: Add a pet
    Given path "customers/<customerID>/cart/"
    And header Authorization = "Bearer " + token
    When method GET
    Then status 200
    And print response
    * def cartId = response.cart_id

    Examples: 
      | customerID |
      |    2723246 |
