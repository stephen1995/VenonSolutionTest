@Testy2
Feature: CRUD Contacts

Background: 

* url "http://dummy.restapiexample.com/api/v1/"
* def loginfeature = call read("login.feature")
* def payloadNewFlow = read("jsonFiles/newEmployee.json")

Scenario: Create and Update a contact

Given path "create"
#And header Authorization = "Bearer "+loginfeature.token
And request payloadNewFlow
And param hapikey = "demo"
When method POST
Then status 200
* def contactresponse = response
#* match contactresponse.. contains {"first_name":"NEW"}



