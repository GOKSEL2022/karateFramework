Feature:
  Scenario:

    Given url 'https://jsonplaceholder.typicode.com'
    And path "/posts/44"
    When method GET
    Then status 200
