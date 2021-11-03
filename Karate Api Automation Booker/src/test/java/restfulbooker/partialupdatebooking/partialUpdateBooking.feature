Feature: Partial Update BOOKING
  THIS SERVICE IS USED TO BE ABLE TO
  PARTIALLY UPDATE THE CLIENT'S RESERVATIONS

  Background:
    * url BaseUrl
    * header Context-Type = 'appliction/json'
    * header Accept = 'application/json'

  @BeonPath
  Scenario:Verify correct request to partially update a reservation receive 200
    * def createTokenReponse = call read('classpath:common/createToken.feature')
    * def accessToken = createTokenReponse.response.token
    Given path '/booking/' + 9
    * cookie token = accessToken
    And request
      """
      {
      "firstname" : "YULIN",
     "lastname" : "Brown"
       }
      """
    When method PATCH
    Then status 200

