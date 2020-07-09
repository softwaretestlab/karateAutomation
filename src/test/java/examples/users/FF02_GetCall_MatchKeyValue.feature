Feature: Using Karate placing a Get request and match key value 
@second
Scenario: Place a Get request and verify response and match key value

Given url 'https://postman-echo.com/get'
Then method GET
Then status 200
Then print response
#xpath
And match response.url == 'https://postman-echo.com/get'
