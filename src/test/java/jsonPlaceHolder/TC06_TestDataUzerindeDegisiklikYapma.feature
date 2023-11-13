Feature: Feature.file_disindaki_dosyada_bulunan_data_degisikligi
  Background:

    * def baseUrl = 'https://jsonplaceholder.typicode.com'
    * def pathParams = '/posts/44'
    * def requestBody = read ("request.json")
    * def expectedResponseBody = read ("expectedResponseBody.json")

  @api4
  Scenario:
    Given url  baseUrl
    And path  pathParams
    And set requestBody.title = 'Karate'
    And set requestBody.body = 'Framework'
    When request  requestBody
    And method Put
    Then status 200
    And match header Content-Type == 'application/json; charset=utf-8'
    When match header Connection == 'keep-alive'
    And set expectedResponse.title = 'Karate'
    And set expectedResponse.body = 'Framework'
    Then match response == expectedResponse

    #And assert response.id == expectedResponseBody.id
    #And assert response.title == expectedResponseBody.title
    #And assert response.body == expectedResponseBody.body
    #And assert response.userId == expectedResponseBody.userId




