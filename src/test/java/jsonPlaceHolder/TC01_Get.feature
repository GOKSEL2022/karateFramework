Feature:Get_request
  @api
  Scenario:Get_request_assertion
    Given url 'https://jsonplaceholder.typicode.com/posts/44'
    When method GET
    And  status 200
    And  match header Content-Type == 'application/json; charset=utf-8'
    And  match response.userId == 5
    And  assert response.title == 'optio dolor molestias sit'