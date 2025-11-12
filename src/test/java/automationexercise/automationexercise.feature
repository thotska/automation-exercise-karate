Feature: Automation Exercise API Tests
  
  Background:
    * url baseUrl
  
  Scenario: API 1 - Get All Products List
    Given path 'productsList'
    When method GET
    Then status 200
    And match response.responseCode == 200
    And match response.products != null
    And match response.products != []
    And print 'Total products:', response.products.length
  
  Scenario: API 2 - POST To All Products List (Method Not Supported)
    Given path 'productsList'
    When method POST
    Then status 405
    And match response.responseCode == 405
    And match response.message == 'This request method is not supported.'
  
  Scenario: API 3 - Get All Brands List
    Given path 'brandsList'
    When method GET
    Then status 200
    And match response.responseCode == 200
    And match response.brands != null
    And match response.brands != []
    And print 'Total brands:', response.brands.length
