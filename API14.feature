Feature: API 14 - GET user account detail by email
  
  Background:
    * url baseUrl
@api14
Scenario: Get user account detail by email with valid email
  Given path 'getUserDetailByEmail'
  And param email = 'testuser@example.com'
  When method GET
    Then status 200
    And match response.responseCode == 200
    And match response.user != null

