Feature: Get Booking Ids
  This service is used to obtain all bookingIds

  Background:
    * url BaseUrl
    * header Accept = 'application/json'

  @BeonPath
    Scenario: Validate that when making a request we obtain all the booking IDs
      Given path '/booking'
      When method GET
      Then status 200
