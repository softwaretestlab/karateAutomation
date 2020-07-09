Feature: Using Karate placing a Get request and match entire response fail scenario

Scenario: Place a Get request and verify response and match entire response fail scenario
* def expectedoutput = read('FF01_ExpectedResponse.json')
Given url 'https://postman-echo.com/get'
Then method GET
Then status 200
Then print response
And match response == expectedoutput

# this test will fail as the header data will chage for every request

