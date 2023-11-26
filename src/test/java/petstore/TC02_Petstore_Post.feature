Feature: 
  Scenario: 
    Given url 'https://petstore.swagger.io/v2/store/order'
    And request
    """
    {
  "id": 5,
  "petId": 10,
  "quantity": 20,
  "shipDate": "2023-11-26T22:26:21.827Z",
  "status": "placed",
  "complete": true
    }
    """
    And method post
    And status 200
    Then match header Connection == 'keep-alive'
    Then match header Content-Type == 'application/json'


