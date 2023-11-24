@petstore
Feature: Get_request_restfulBooker
  Scenario: Get_RestfulBooker
    Given url 'https://petstore.swagger.io/v2/store/order/10'
    And method GET
    And status 200
    And match header Content-Type == 'application/json'
    Then match header Connection == 'keep-alive'
    Then match response.id == 10
    Then match response.petId == 20
    Then match response.quantity == 5
    Then match response.shipDate == '2023-11-21T09:51:58.683+0000'
    Then match response.status == 'placed'
    Then match response.complete == true



