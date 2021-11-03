Feature: UPDATE BOOKING
  THIS SERVICE IS USED TO BE ABLE TO
  UPDATE CUSTOMER RESERVATIONS

  Background:
    * url BaseUrl
    * header Context-Type = 'appliction/json'
    * header Accept = 'application/json'

    Scenario:Verify correct request to update a reservation receive 200
      * def createTokenReponse = call read('classpath:common/createToken.feature')
      * def accessToken = createTokenReponse.response.token
      Given path '/booking/' + 9
      * cookie token = accessToken
      And request
      """
        {
          "firstname" : "James",
          "lastname" : "Tinco",
         "totalprice" : 777,
         "depositpaid" : true,
         "bookingdates" : {
          "checkin" : "2021-01-01",
          "checkout" : "2021-01-01"
        },
           "additionalneeds" : "Breakfast"
           }
      """
      When method PUT
      Then status 200
