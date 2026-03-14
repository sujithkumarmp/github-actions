Feature: Home endpoint tests

  Background:
    * url baseUrl

  Scenario: GET / returns greeting
    Given path '/'
    When method GET
    Then status 200
    And match response == 'Hello, Spring Boot!'

  Scenario: GET /hello returns Hello World
    Given path '/hello'
    When method GET
    Then status 200
    And match response == 'Hello, World!'
