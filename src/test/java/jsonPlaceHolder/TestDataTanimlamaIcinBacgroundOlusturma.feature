Feature:Tekrarlar_icin_test_data_tanimlanir
  Background:Test_icin_data_tanimlama
    Given def baseUrl = 'https://jsonplaceholder.typicode.com'
    When def pathParams = '/posts/44'
    And def requestBody =
    """
    {
    "id": 44,
    "title": "Ahmet",
    "body": "Merhaba",
    "userId": 10
    }
    """

    Then def expectedResponse =
    """
    {
    "id": 44,
    "title": "Ahmet",
    "body": "Merhaba",
    "userId": 10
    }
    """
  Scenario: Testini_hazir_data_ile_yapar
    Given url baseUrl
    When path pathParams
    And request requestBody
    And method put
    And status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    When match header Connection == 'keep-alive'
    Then match response == expectedResponse
