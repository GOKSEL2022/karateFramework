Feature: Put_request
  Scenario: Put_request_assertion
    Given url 'https://jsonplaceholder.typicode.com'
    And path '/posts/44'
    And request 
     """
    {
    "id": 70,
    "title": "Ahmet",
    "body": "Merhaba",
    "userId": 10
    }
    """
    And method put
    Then status 200
    Then match header Content-Type == 'application/json; charset=utf-8'
    Then match header Connection == 'keep-alive'
    Then assert response.title == 'Ahmet'
    Then assert response.body == 'Merhaba'
    Then assert response.userId == 10
    Then assert response.id == 44