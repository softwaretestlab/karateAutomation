Feature: Using Karate placing a Get request and match entire response pass scenario

Scenario: Place a Get request and verify response and match entire response pass scenario
* def expectedoutput = read('result.json')
Given url 'https://reqres.in/api/users/2'
Then method GET
Then status 200
Then print response
And match response == expectedoutput

# in this scenario the response wont change and so its matched with already stored json file
