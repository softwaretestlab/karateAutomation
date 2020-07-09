Feature: Auth Token  

Background:
 * url 'https://reqres.in/api/'

# this below scenario will generate auth token
Scenario: Get Auth token and make a post call
* def AuthParam =
"""
{
    "email": "eve.holt@reqres.in",
    "password": "pistol"
}
"""
Given path 'register'
And form fields AuthParam
Then method POST
Then status 200
Then print 'Auth API response : ' , response
# in from above post request we got auth code which we will use while logging in 



* def AuthToken = response.token
Given path 'users/4'
And header Autherization = 'Bearer ' + AuthToken
When method GET
Then status 200
Then print 'Login API response : ' , response

