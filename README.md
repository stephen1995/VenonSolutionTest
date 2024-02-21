## API Automation testing using KarateFramework
Preconditions:
-
  - Make sure you have Maven installed
  - Make sure Java 11 is installed and setup on your Path
  - In order to run pet store project locally you run this command in the folder: mvn package jetty:run
  - You can this URL https://petstore3.swagger.io/api/v3 in case you dont want to run it locally but you should change url of the test cases

How to run:
-
- Go to a test scenario and click on run scenario / feature
- You can run scenarios using the Tagging approach as well, using the "TestRunner" class. for Example: "@login" tag

Reporting:
- 
  - Latest run results are going to be here: KarateFramework\target\surefire-reports\karate-summary.html



 For performance testing:
-
- We can use a new feature from postman which allows you to test performance using ramp up, skipe, fixed, peak features :
![image](https://github.com/stephen1995/VenonSolutionTest/assets/17716677/26d32361-cf2b-46be-a62b-2ecd7e355ee9)

![image](https://github.com/stephen1995/VenonSolutionTest/assets/17716677/5453c3d6-265b-4dcf-b6a3-31e854bcbfeb)

