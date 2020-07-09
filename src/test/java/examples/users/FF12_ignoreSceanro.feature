@softwaretestlab
Feature: let ignore a get call
@Ignore
Scenario: testone Place a Get request and verify response
#* def expectedoutput = read('result.json')
#Given url 'https://postman-echo.com/get'
Given url 'https://reqres.in/api/users/2'
Then method GET
Then status 200
Then print response
#And match response.data.id == 2
#And match response == expectedoutput
#And match response.url == 'https://postman-echo.com/get'


Scenario: testtwo Place a Get request and verify response
#* def expectedoutput = read('result.json')
#Given url 'https://postman-echo.com/get'
Given url 'https://reqres.in/api/users/2'
Then method GET
Then status 200
Then print response
#And match response.data.id == 2
#And match response == expectedoutput
#And match response.url == 'https://postman-echo.com/get'
