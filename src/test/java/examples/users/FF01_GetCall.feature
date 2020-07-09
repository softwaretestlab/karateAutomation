@first
Feature: Using Karate placing a Get request
@second
Scenario: Place a Get request and verify response
Given url 'https://reqres.in/api/users/2'
Then method GET
Then status 200
Then print response

