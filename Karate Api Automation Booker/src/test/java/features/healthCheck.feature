Feature: Health Check
  this service is used
  To be able to check the status of the service
  Background:
    * url BaseUrl

  @BeonPath
    Scenario: Verify correct request to check the status of the service receive 201
      Given path '/ping'
      When method GET
      Then status 201

