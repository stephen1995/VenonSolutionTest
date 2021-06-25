Feature: Kw Authorization

Background:
* def loginpayload = read("jsonFiles/login.json")
* url "https://api.hubapi.com/"

@Testy
Scenario: Login using kelle2 credentials
Given path "automation/v2/workflows/enrollments/contacts/2637"
And param hapikey = "demo"
When method GET
Then status 200
#* def token = response.access_token

