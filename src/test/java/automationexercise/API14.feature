Feature: API 14 - GET user account detail by email
  
  Background:
    * url baseUrl
  
  Scenario: Get user account detail by email with valid email
    Given path 'getUserDetailByEmail'
    And param email = process.env.userEmail
    When method GET
    Then status 200
    And match response.responseCode == 200
    And match response.user != null
    

