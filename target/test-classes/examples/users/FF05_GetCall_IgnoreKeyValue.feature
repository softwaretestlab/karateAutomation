Feature: Using Karate placing a Get request and ignore validation of one keyvalue pair

Scenario: Place a Get request and verify response and ignore validation of one keyvalue pair
* def expectedoutput = read('result2.json')
Given url 'https://reqres.in/api/users/2'
Then method GET
Then status 200
Then print response
And match response == expectedoutput

# in this test we will ignore comparision of one of the values from response
# to do so enter #ignore against the key ex: "lastname" = #ignore
# checkout the same in results2.json file
