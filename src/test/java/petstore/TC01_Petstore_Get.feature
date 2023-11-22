@petstore
Feature: Get_request_restfulBooker
  Scenario: Get_RestfulBooker
    Given url 'https://petstore.swagger.io/v2/pet/120'
    And method GET
    And status 200
    And match header Content-Type == 'application/json'
    Then match header Connection == 'keep-alive'