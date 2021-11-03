Feature: Create Booking


  Background:
    * url BaseUrl
    * header Accept = 'application/json'
  @HappyPath
    Scenario: Verify that when sending the request with the correct username and password, you receive cod 200
      * string schema = read('classpath:helper/createtoken/jsonschema/scenario1-schema.json')
      * def SchemaUtils = Java.type('com.intuit.karate.restfullbooker.util.SchemaUtils')
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
      And assert SchemaUtils.isValid(response,schema)
