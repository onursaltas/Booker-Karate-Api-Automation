Feature: Create Booking


  Background:
    * url BaseUrl
    * header Accept = 'application/json'

    Scenario: Verify that when sending the request with the correct username and password, you receive cod 200
      Given path '/auth'
      And request
      """
      {
        "username" : "admin",
        "password" : "password123"
      }
      """
      When method POST
      Then status 200