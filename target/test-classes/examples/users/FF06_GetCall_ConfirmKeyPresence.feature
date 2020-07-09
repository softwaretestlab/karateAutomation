Feature: Using Karate placing a Get request and ignore validation of one keyvalue pair

Scenario: Place a Get request and verify response and ignore validation of one keyvalue pair

Given url 'https://reqres.in/api/users/2'
Then method GET
Then status 200
Then print response
#here we are checking if this key 'last_name' has a value in the response
And match response.data.last_name != null
#Here we are checking if key 'jagan' present in response
#we are setting jagan to null meaning this key is not present and test will pass
* def TestVar = response.data.jagan
# this key 'jagan' is not present
And match TestVar == null



