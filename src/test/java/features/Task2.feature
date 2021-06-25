 @tag1
Feature: Get Info from countries

 
  Scenario Outline: Info of each country
    Given path <name>
    When I check for the <value> in step
    Then I verify the <status> in step

    Examples: 
      | country  | value | status  |
      | US |     5 | success |
      | DE |     7 | Fail    |
      | GB |		5  |	 Ra     | 
