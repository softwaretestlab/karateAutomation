Feature: Data Driven testing  

Background:
 * url 'http://dummy.restapiexample.com/'

Scenario Outline: Creating users

Given path 'api/v1/create'
And request {"name":<name>,"salary":<salary>,"age":<age>}
Then method POST
Then status 200
Then print 'response is' , response

#Examples:
#	|name|salary|age|
#	|test|10|10|
#	|tester|10|10|

Examples:
|read('inputdata.csv')|