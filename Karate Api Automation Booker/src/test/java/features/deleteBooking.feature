Feature: delete booking
  This service is used to eliminate the
  customer reservation by booking id

  Background:
    * url BaseUrl
    * header Context-Type = 'appliction/json'
  @HappyPath
    Scenario: Verify correct request to delete a reservation receive 201
      * def createTokenReponse = call read('classpath:helper/createToken.feature')
      * def createBookingReponse = call read('classpath:helper/createBooking.feature')
      * def accessToken = createTokenReponse.response.token
      * def bookingId = createBookingReponse.response.bookingid
      Given path '/booking/' + bookingId
      And cookie token = accessToken
      When method DELETE
      Then status 201
