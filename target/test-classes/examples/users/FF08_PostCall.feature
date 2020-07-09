Feature: How to post using karate  

Background:
* def JsonPayLoad = read('FF08_PayLoad.json')
 * url 'https://reqres.in/api/'
#multiple headers
# * headers {Content-Type = 'application/json' , Accept: 'applicaiton/json'}


Scenario: Making a post call
Given path 'users'
And request JsonPayLoad
#single header
#And header Content-Type = 'application/json'
#multiple headers
And headers {Content-Type = 'application/json' , Accept: 'applicaiton/json'}
When method POST
Then status 201
Then print 'Response is', response
