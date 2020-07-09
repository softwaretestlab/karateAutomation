Feature: enter parameters in endpoint  
 # this is the endpoint with parameter.....> https://reqres.in/api/users?delay=3
 # multiple parameter passing process--->params {delay = 3, test = 4, etc}
Background:
* def JsonPayLoad = read('FF08_PayLoad.json')
 * url 'https://reqres.in/api/'
#multiple headers
* headers {Content-Type = 'application/json' , Accept: 'applicaiton/json'}

Scenario: Using parameters in a post call
Given path 'users'
And request JsonPayLoad
And param delay = 3
When method POST
Then status 201
Then print 'Response is', response
