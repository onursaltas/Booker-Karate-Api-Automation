Feature: Create Booking

  Background:
    * url BaseUrl
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'

  Scenario:Verify correct request to create a reservation receive 200
      Given path '/booking'
      And request
      """
        {
        "firstname" : "Jim",
        "lastname" : "Brown",
        "totalprice" : 111,
        "depositpaid" : true,
        "bookingdates" : {
        "checkin" : "2018-01-01",
        "checkout" : "2019-01-01"
        },
        "additionalneeds" : "Breakfast"
        }
      """
      When method POST
      Then status 200