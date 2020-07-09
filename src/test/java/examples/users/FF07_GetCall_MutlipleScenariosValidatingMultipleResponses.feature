Feature: mutltiple scenarios and multiple responses

Scenario: mutliple scenarios using one single json file for multiple responses scenario1
* def expectedoutput = read('C:\\Users\\etikalaj\\eclipse-workspace2020\\KarateAPIautomationLearning\\src\\test\\java\\expectedResponse\\mutlipleResponsesStoredAtOnePlace.json')
Given url 'https://reqres.in/api/users/2'
Then method GET
Then status 200
Then print response
And match response == expectedoutput[0]


Scenario: mutliple scenarios using one single json file for multiple responses scenario2
* def expectedoutput = read('C:\\Users\\etikalaj\\eclipse-workspace2020\\KarateAPIautomationLearning\\src\\test\\java\\expectedResponse\\mutlipleResponsesStoredAtOnePlace.json')
Given url 'https://reqres.in/api/users/3'
Then method GET
Then status 200
Then print response
And match response == expectedoutput[1]

#we created a new package and added a new json file (mutlipleResponsesStoredAtOnePlace.json)
#Get both response for above json calls and paste in (mutlipleResponsesStoredAtOnePlace.json) file
#separate responses by , and put both of them in array 
# as shown in mutlipleResponsesStoredAtOnePlace.json file and call by index