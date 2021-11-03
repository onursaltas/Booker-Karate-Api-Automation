Feature: Get Booking
  This service is used to be able to
  check the reservation by booking id
  Background:
    * url BaseUrl
    * header Accept = 'application/json'
  @BeonPath
       Scenario: Verify correct request with a reservation id receive cod 200
       Given path '/booking/' + 13
       When method GET
       Then status 200